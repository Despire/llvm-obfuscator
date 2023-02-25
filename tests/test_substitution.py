import os
import subprocess

for root, dirs, files in os.walk("input"):
    for directory in dirs:
        current_dir = os.path.join(root, directory)

        files = os.listdir(current_dir)
        if "compile.sh" in files:
            os.environ["input_path"] = current_dir + "/" + directory
            os.environ["output_path"] = current_dir.replace("input", "output")
            subprocess.call(["bash", current_dir + "/compile.sh"])


# execute tests.
for root, dirs, files in os.walk("output"):
    for directory in dirs:
        current_dir = os.path.join(root, directory)

        files = os.listdir(current_dir)
        if "substitution.ll" in files:
            orig = os.path.join(current_dir, directory + ".ll")
            substitution = os.path.join(current_dir, "substitution.ll")
            result_original = subprocess.run([os.environ["llvm_interpreter"], orig], capture_output=True)
            result_substitution = subprocess.run([os.environ["llvm_interpreter"], substitution], capture_output=True)
            assert result_original.returncode == result_substitution.returncode
            print("PASS: ", current_dir, "\t\t\t\t", result_original.returncode, " == ", result_substitution.returncode)

