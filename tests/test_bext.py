import os
import subprocess

# Re-generate test files
for root, dirs, files in os.walk("input"):
    for directory in dirs:
        if "block-extraction" not in directory:
            continue

        current_dir = os.path.join(root, directory)
        for directory in os.listdir(current_dir):
            example = os.path.join(current_dir, directory)
            os.environ["input_path"] = os.path.join(example, directory)
            os.environ["output_path"] = example.replace("input", "output")
            subprocess.call(["bash", example + "/compile.sh"])


# execute tests.
for root, dirs, files in os.walk("output"):
    for directory in dirs:
        current_dir = os.path.join(root, directory)

        files = os.listdir(current_dir)
        # check first for already linked binaries.
        if "bext.out" in files:
            orig = os.path.join(current_dir, directory + ".out")
            bext = os.path.join(current_dir, "bext.out")
            result_original = subprocess.run(orig, capture_output=True)
            result_bext = subprocess.run(bext, capture_output=True)
            assert result_original.returncode == result_bext.returncode
            print("PASS: ", current_dir, "\t\t\t\t", result_original.returncode, " == ", result_bext.returncode)

        elif "bext.ll" in files:
            orig = os.path.join(current_dir, directory + ".ll")
            bext = os.path.join(current_dir, "bext.ll")
            result_original = subprocess.run([os.environ["llvm_interpreter"], orig], capture_output=True)
            result_bext = subprocess.run([os.environ["llvm_interpreter"], bext], capture_output=True)
            assert result_original.returncode == result_bext.returncode
            print("PASS: ", current_dir, "\t\t\t\t", result_original.returncode, " == ", result_bext.returncode)