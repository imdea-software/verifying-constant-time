#! /bin/bash

# Set these flags to control various installation options
INSTALL_DEPENDENCIES=1
BUILD_Z3=1
BUILD_BOOGIE=1
BUILD_CORRAL=1
BUILD_SMACK=1
TEST_SMACK=1
BUILD_LLVM=0 # LLVM is typically installed from packages (see below)
BUILD_MONO=0

# PATHS
SMACK_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd .. && pwd )"
ROOT="$( cd "${SMACK_DIR}" && cd .. && pwd )"
Z3_DIR="${ROOT}/z3"
BOOGIE_DIR="${ROOT}/boogie"
CORRAL_DIR="${ROOT}/corral"
MONO_DIR="${ROOT}/mono"
LLVM_DIR="${ROOT}/llvm"

#source ${SMACK_DIR}/bin/versions

#SMACKENV=${ROOT}/smack.environment
WGET="wget --no-verbose --method=GET"

# Install prefix -- system default is used if left unspecified
INSTALL_PREFIX=
CONFIGURE_INSTALL_PREFIX=
CMAKE_INSTALL_PREFIX=

# Partial list of dependnecies; the rest are added depending on the platform
DEPENDENCIES="cmake python-yaml unzip wget"

Z3_DOWNLOAD_LINK="https://github.com/Z3Prover/z3/releases/download/z3-4.4.1/z3-4.4.1-x64-ubuntu-14.04.zip"
DEPENDENCIES+=" clang-3.5 llvm-3.5 mono-complete libz-dev libedit-dev"
DEPENDENCIES+=" ruby2.2"

# Install core dependencies from packages
sudo add-apt-repository "deb http://llvm.org/apt/trusty/ llvm-toolchain-trusty-3.5 main"
${WGET} -O - http://llvm.org/apt/llvm-snapshot.gpg.key | sudo apt-key add -
sudo add-apt-repository ppa:brightbox/ruby-ng-experimental # for ruby2.2
sudo apt-get update
sudo apt-get install -y ${DEPENDENCIES}
sudo update-alternatives --install /usr/bin/clang clang /usr/bin/clang-3.5 20
sudo update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-3.5 20
sudo update-alternatives --install /usr/bin/llvm-config llvm-config /usr/bin/llvm-config-3.5 20
sudo update-alternatives --install /usr/bin/llvm-link llvm-link /usr/bin/llvm-link-3.5 20

# Build local version of the tools
make local-tools
