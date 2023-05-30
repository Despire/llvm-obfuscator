# llvm-obfuscator
LLVM trasnsformation passes for code obfuscation. Details described in [paper](https://github.com/Despire/llvm-obfuscator/blob/main/docs/paper.pdf)

# How To Build
Install LLVM via homebrew

```bash
brew install llvm@15
```

# OS X
Set the directory in the CMakeLists.txt to the path of the installation of LLVM.

```CMake
set(LT_LLVM_INSTALL_DIR "/opt/homebrew/opt/llvm@15")
```

```bash
$ cmake .
$ make
```

The libraries should now be present in the `lib` folder of the project

# Ubuntu

Install LLVM-15 via apt

```bash
sudo apt install llvm-15
```

Set the installation directory for LLVM in the CMakeLists.txt

```CMake
set(LT_LLVM_INSTALL_DIR "/usr/lib/llvm-15")
```

In the root directory compile the project

```bash
cmake .
make 
```

The libraries should now be present in the `lib` folder of the project

# Use
The libraries can be used with the `opt` tool that comes installed with LLVM. Examples of using the transformation passes can be seen in the `input` directory where each example has a `compile.sh`
that uses that specific transformation, or also in the `demo` folder.

update the `env-vars` (for example in the case of the ubuntu installation above)
```bash
#!/bin/bash

export llvm_path="/usr/lib/llvm-15"
export llvm_interpreter="/usr/lib/llvm-15/bin/lli"
export llvm_linker="/usr/lib/llvm-15/bin/llc"
```

#### How to run examples
After you set the env variables, which are used in the `compile.sh` to the correct path, you should be able to execute the `compile.sh` scripts in the provided examples of the `demo` and `input` folders
your setup.

```bash
source ./env-vars
cd ./demo
./compile.sh
```
