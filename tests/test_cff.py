import os
import subprocess

for root, dirs, files in os.walk("input"):
    for directory in dirs:
        if "cff" not in directory:
            continue
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
        if "cff.ll" in files:
            orig = os.path.join(current_dir, directory + ".ll")
            cff = os.path.join(current_dir, "cff.ll")
            result_original = subprocess.run([os.environ["llvm_interpreter"], orig], capture_output=True)
            result_cff = subprocess.run([os.environ["llvm_interpreter"], cff], capture_output=True)
            print(result_original)
            print(result_cff)
            assert result_original.returncode == cff.returncode
            print("PASS: ", current_dir, "\t\t\t\t", result_original.returncode, " == ", cff.returncode)

