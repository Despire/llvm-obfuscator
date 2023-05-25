# llvm-obfuscator
LLVM trasnsformation passes for code obfuscation.

# How To Build

# OS X
Install LLVM via homebrew 

```bash
brew install llvm@15
```

```bash
$ cmake .
$ make
```

You should then have build libraries that can be used with the `opt` tool that comes installed with LLVM. Examples of using the transformation passes can be seen in the `input` directory where each example has a `compile.sh`
that uses that specific transformation, or also in the `demo` folder.

# Linux


# How to run examples
You'll need to set the env variables, which are used in the `compile.sh` to the correct path, you can set the env variables in the `env-vars` file, they're currently set to my local setup so you'll most likely need to update them to reflect
your setup.

```bash
source ./env-vars
cd ./demo
./compile.sh
```
