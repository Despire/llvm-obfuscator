import os
import subprocess

# Re-generate test files
for root, dirs, files in os.walk("input"):
    for directory in dirs:
        if "merge-funcs" not in directory:
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
        if "mergef.out" in files:
            orig = os.path.join(current_dir, directory + ".out")
            mergef = os.path.join(current_dir, "mergef.out")
            result_original = subprocess.run(orig, capture_output=True)
            result_mergef = subprocess.run(mergef, capture_output=True)
            assert result_original.returncode == result_mergef.returncode
            print("PASS: ", current_dir, "\t\t\t\t", result_original.returncode, " == ", result_mergef.returncode)

        elif "mergef.ll" in files:
            orig = os.path.join(current_dir, directory + ".ll")
            mergef = os.path.join(current_dir, "mergef.ll")
            result_original = subprocess.run([os.environ["llvm_interpreter"], orig], capture_output=True)
            result_mergef = subprocess.run([os.environ["llvm_interpreter"], mergef], capture_output=True)
            assert result_original.returncode == result_mergef.returncode
            print("PASS: ", current_dir, "\t\t\t\t", result_original.returncode, " == ", result_mergef.returncode)