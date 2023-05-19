# SAYAC Compiler using LLVM

This repository contains the source code for SAYAC Compiler developed using LLVM 12. 

The SAYAC processor is a Simple Architecture Yet Ample Circuitry. This is a 
RISCV-like processor developed at University of Tehran. 

## Getting Started with the LLVM System

LLVM project https://llvm.org/docs/GettingStarted.html.

LLVM Backend https://llvm.org/docs/WritingAnLLVMBackend.html

## Setup and use locally
The following steps can be followed to setup this project on a Linux system

1. Clone the repo and change directory

```
git clone https://github.com/ak821/SAYAC-Compiler.git
cd SAYAC-Compiler
git checkout main-sayac
```

2. Create a build directory 
```
mkdir build
cd build
```

3. Generate build system files
```
cmake -G "Ninja" -DLLVM_ENABLE_PROJECTS="clang" -DLLVM_TARGETS_TO_BUILD="RISCV" -DLLVM_EXPERIMENTAL_TARGETS_TO_BUILD="SAYAC" -DCMAKE_BUILD_TYPE="Debug" -DLLVM_ENABLE_ASSERTIONS=On ../llvm
ninja
```
Setting -DCMAKE_BUILD_TYPE="Release" can lead to faster build. For more details and customizing the build process check https://llvm.org/docs/GettingStarted.html#getting-the-source-code-and-building-llvm

4. Install the binaries
```
ninja install
```

## Compiling C code
Move into `SAYAC-Compiler` directory and create a `test.c` file.

1. C code to LLVM IR
```
./build/bin/clang -emit-llvm -target sayac -o test.bc -c test.c
```
The previous command created a `test.bc` file with the LLVM IR, but thats not very human-readable. To convert it in a human readable format, the following command can be executed which generates `test.ll` file
```
./build/bin/llvm-dis test.bc
cat test.ll
```

2. LLVM IR to SAYAC assembly
```
.build/bin/llc test.bc
cat test.s
```
The `test.s` file generated constains the code in SAYAC assembly langugage.

NOTE: C standard libraries not supported yet. So do not use #include in `test.c` file
