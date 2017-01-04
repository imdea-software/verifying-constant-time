
                                        FourQlib v2.0 (C Edition)
                                        =========================

FourQlib v2.0 library (C Edition) implements essential elliptic curve functions supporting FourQ, a new,
high-security, high-performance elliptic curve that targets the 128-bit security level [1]. The library 
was developed by Microsoft Research for experimentation purposes. 

The library is made available under the MIT License. 


1. CONTENTS:
   --------

Version 2.0 of FourQlib includes two API-compatible implementations: 
- A portable implementation with optional optimizations for x64 platforms ("FourQ_x64_and_portable"
  folder).
- An optimized implementation for ARM-based platforms with NEON support ("FourQ_NEON" folder). 

The "FourQ_x64_and_portable" folder contains:

Visual Studio/FourQ/            - Folder with Visual Studio 2013 solution and project files for compila-
                                  tion in Windows.
Visual Studio/ecc_tests/        - Folder with Visual Studio project files for testing in Windows.
makefile                        - Makefile for compilation using GNU GCC or clang compilers on Linux. 
*.c, *.h                        - Library and header files.  
generic/                        - Folder with library files for portable implementation.
AMD64/                          - Folder with library files for optimized x64 implementation.

The "FourQ_NEON" folder contains:

makefile                        - Makefile for compilation using GNU GCC or clang compilers on Linux. 
*.c, *.h                        - Library and header files.
ARM/                            - Folder with library files for optimized ARM NEON implementation.

The library also includes:

FourQ-Magma/                    - Magma scripts for testing/verification of algorithms.
README.txt                      - This readme file.
License.txt                     - License file.


2. MAIN FEATURES:
   -------------
   
- Support for 3 core elliptic curve operations: variable-base, fixed-base and double-scalar multiplications.
- Support for Windows OS using Microsoft Visual Studio and Linux OS using GNU GCC or clang.    
- Basic implementation using portable C to enable support on a wide range of platforms including x64, x86 
  and ARM. 
- Optimized implementation for x64 platforms with optional, high-performance x64 assembly for Linux.
- High-performance implementation for ARM processors with NEON support.
- Testing and benchmarking code for elliptic curve functions. 
- All functions evaluating secret data have regular, constant-time execution, protecting against timing and 
  cache attacks.
- Option to disable the use of the fast endomorphisms ("FourQ_x64_portable" implementation).


3. SUPPORTED PLATFORMS:
   -------------------

FourQlib v2.0 is supported in a wide range of platforms including x64, x86 and ARM devices running Windows 
or Linux OS. We have tested the library with Microsoft Visual Studio 2013 and GNU GCC v4.7 and v4.8, clang 
v3.7 and v3.8. See instructions below to choose an implementation option and compile on one of the supported 
platforms. 


4. IMPLEMENTATION OPTIONS FOR "FourQ_x64_portable" IMPLEMENTATION:
   --------------------------------------------------------------

The following implementation options are available for the "FourQ_x64_portable" implementation:

- A portable implementation (enabled by the "GENERIC" option) and an optimized x64 implementation. Note that 
  non-x64 platforms are only supported by the generic implementation. 

- Use of special AVX or AVX2 instructions enabled by defining _AVX_ or _AVX2_ (Windows) or by the "AVX" and 
  "AVX2" options (Linux).

- Optimized x64 assembly implementations enabled by the "ASM" option in Linux.

- Use of fast endomorphisms enabled by the "USE_ENDO" option.

Follow the instructions in Subsection 4.1, "INSTRUCTIONS FOR WINDOWS OS" or Subsection 4.2, "INSTRUCTIONS FOR 
LINUX OS", to configure these different options.


4.1 INSTRUCTIONS FOR WINDOWS OS:
    ---------------------------

BUILDING THE LIBRARY WITH VISUAL STUDIO:
---------------------------------------

Open the solution file (FourQ.sln) in Visual Studio 2013, select one of the available configurations from
the Solution Configurations menu ("Release" corresponding to the high-speed x64 implementation and "Generic" 
corresponding to the portable implementation) and select one of the Solution Platforms (x64 or Win32). Note 
that Win32 is only supported with the "Generic" solution configuration.

By default, USE_ENDO=true and (for x64) _AVX_ is defined. To modify this configuration, go to the property 
window of the FourQ project, go to Configuration Properties > C/C++ > Preprocessor. Make any suitable chan-
ges, e.g., delete _AVX_ if AVX instructions are not supported, replace _AVX_ by _AVX2_ if AVX2 instructions
are supported, or set USE_ENDO=true or false. Repeat these steps for the ecc_tests project.

Finally, select "Build Solution" from the "Build" menu. 

RUNNING THE TESTS:
-----------------

After building the solution, run ecc_tests.exe.

USING THE LIBRARY:
-----------------

After building the solution, add the FourQ.lib file to the set of References for a project, and add FourQ.h 
to the list of Header Files of a project.


4.2. INSTRUCTIONS FOR LINUX OS:
     -------------------------

BUILDING THE LIBRARY AND EXECUTING THE TESTS WITH GNU GCC OR CLANG:
------------------------------------------------------------------

To compile on Linux using the GNU GCC compiler or the clang compiler, execute the following command from the 
command prompt:

make CC=[gcc/clang] ARCH=[x64/x86/ARM] ASM=[TRUE/FALSE] AVX=[TRUE/FALSE] AVX2=[TRUE/FALSE] SET=[EXTENDED]
     USE_ENDO=[TRUE/FALSE] GENERIC=[TRUE/FALSE] SERIAL_PUSH=[TRUE/FALSE] DISABLE_FIXED_MUL=[TRUE/FALSE] 
     DISABLE_DOUBLE_MUL=[TRUE/FALSE]   

After compilation, run ecc_tests.

For example, to compile the fully optimized x64 implementation in assembly with clang using the efficient
endomorphisms on a machine with AVX2 support (e.g, Intel's Haswell or Broadwell), execute:

make CC=clang ARCH=x64 ASM=TRUE AVX2=TRUE USE_ENDO=TRUE SET=EXTENDED

As another example, to compile the fully optimized x64 implementation in assembly with clang using the effi-
cient endomorphisms on a machine with AVX support (e.g, Intel's Sandy Bridge or Ivy Bridge), execute:

make CC=clang ARCH=x64 ASM=TRUE AVX=TRUE USE_ENDO=TRUE

DISABLE_FIXED_MUL and DISABLE_DOUBLE_MUL allow to disable the compilation of the functions for computing 
fixed-based and double-scalar multiplications, respectively.

SERIAL_PUSH can be enabled in some platforms (e.g., AMD without AVX2 support) to boost performance.

When SET=EXTENDED, the following compilation flags are used: -Wall -Wextra -fwrapv -fomit-frame-pointer 
-march=native. Users are encouraged to experiment with the different flag options.

Whenever an unsupported configuration is applied, the following message will be displayed: #error -- "Unsu-
pported configuration". For example, the use of assembly or any of the AVX options is not supported when se-
lecting the portable implementation (i.e., if GENERIC=TRUE). Similarly, x86 and ARM are only supported when 
GENERIC=TRUE.  


5. INSTRUCTIONS FOR "FourQ_NEON" IMPLEMENTATION:
   --------------------------------------------

BUILDING THE LIBRARY AND EXECUTING THE TESTS WITH GNU GCC OR CLANG:
------------------------------------------------------------------

To compile on Linux using the GNU GCC compiler or clang compiler, execute the following command from the co-
mmand prompt:

make CC=[gcc/clang] ARCH=[ARM] INTERLEAVE=[TRUE/FALSE] MIX_ARM_NEON=[TRUE/FALSE] SET=[EXTENDED]
     DISABLE_FIXED_MUL=[TRUE/FALSE] DISABLE_DOUBLE_MUL=[TRUE/FALSE]

After compilation, run ecc_tests.

For example, to compile with GNU GCC on a Cortex-A8 based platform execute:

make CC=gcc ARCH=ARM INTERLEAVE=TRUE MIX_ARM_NEON=TRUE 

As another example, to compile with GNU GCC on a Cortex-A15 based platform execute:

make CC=gcc ARCH=ARM 

The optimization flags "INTERLEAVE" and "MIX_ARM_NEON" should be enabled depending on the targeted architec-
ture. For example, in general, enabling "INTERLEAVE" improves performance on Cortex-A7, A8 and A9 processors; 
in general, enabling "MIX_ARM_NEON" improves performance on Cortex-A8 and A9 processors (see [2] for more de-
tails). Users are encouraged to experiment with these options to determined optimal configuration on a parti-
cular platform.

DISABLE_FIXED_MUL and DISABLE_DOUBLE_MUL allow to disable the compilation of the functions for computing 
fixed-based and double-scalar multiplications, respectively. 

When SET=EXTENDED, the following compilation flags are used: -fwrapv -fomit-frame-pointer -funroll-loops. 
Users are encouraged to experiment with the different flag options.

Whenever an unsupported configuration is applied, the following message will be displayed: #error -- "Unsu-
pported configuration". This is the case if "ARCH" is compiled with an entry other than "ARM".


REFERENCES:
----------

[1]   Craig Costello and Patrick Longa. 
      FourQ: four-dimensional decompositions on a Q-curve over the Mersenne prime.
      Advances in Cryptology - ASIACRYPT 2015, 2015. 
      Extended version available at: http://eprint.iacr.org/2015/565.

[2]   Patrick Longa. 
      FourQNEON: faster elliptic curve scalar multiplications on ARM processors.
      TechReport MSR-TR-2016-25, 2016. http://research.microsoft.com/apps/pubs/?id=266450
 
