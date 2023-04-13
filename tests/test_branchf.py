import os
import subprocess

# Re-generate test files
for root, dirs, files in os.walk("input"):
    for directory in dirs:
        if "branch-function" not in directory:
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

        if "ex7" in current_dir: # ex7 is a spinning cube nothing to check to automatically must be done maunally.
            continue

        files = os.listdir(current_dir)
        # check first for already linked binaries.
        if "bf.out" in files:
            orig = os.path.join(current_dir, directory + ".out")
            bf = os.path.join(current_dir, "bf.out")
            result_original = subprocess.run(orig, capture_output=True)
            result_bf = subprocess.run(bf, capture_output=True)
            assert result_original.returncode == result_bf.returncode
            print("PASS: ", current_dir, "\t\t\t\t", result_original.returncode, " == ", result_bf.returncode)

        elif "bf.ll" in files:
            orig = os.path.join(current_dir, directory + ".ll")
            bf = os.path.join(current_dir, "bf.ll")
            result_original = subprocess.run([os.environ["llvm_interpreter"], orig], capture_output=True)
            result_bf = subprocess.run([os.environ["llvm_interpreter"], bf], capture_output=True)
            assert result_original.returncode == result_bf.returncode
            print("PASS: ", current_dir, "\t\t\t\t", result_original.returncode, " == ", result_bf.returncode)