# By default, for testing, we run the sort example
WD            ?=../examples/sort
LIBS          ?=
EXAMPLE       ?=sort.c
ENTRYPOINTS   ?=sort3_wrapper
UNROLL        ?=1
LOOPLIMIT     ?=1
SUFFIX        ?=

BASE           =$(notdir $(EXAMPLE))
MODELFILE     ?=$(WD)/$(BASE:.c:.model)

# By default, use local tools
Z3PATH        ?=../tools/z3
SMACKPATH     ?=../tools/smack
BAMPATH       ?=../tools/bam-bam-boogieman
BOOGIEPATH    ?=../tools/boogie
CORRALPATH    ?=../tools/corral

VERIFIER      ?= corral

# Finalizing env. var. init.
## Binaries and Path
PATH          :=$(SMACKPATH)/bin:$(SMACKPATH)/build:$(CORRALPATH)/bin:$(PATH)
export PATH

export BOOGIE ?=$(BOOGIEPATH)/Binaries/Boogie.exe
export CORRAL ?=$(CORRALPATH)/bin/Debug/corral.exe

## Files
LIBSIN        ?=$(patsubst %,$(WD)/%,$(LIBS))
SMACKIN       ?=$(WD)/$(EXAMPLE)
SMACKOUT      ?=$(WD)/$(BASE:.c=$(SUFFIX).bpl)
BAMOUT        ?=$(WD)/$(BASE:.c=$(SUFFIX)-instrumented.bpl)

## SMACK flags
### Common flags
SMACKFLAGS    ?=$(SMACKOPTS)
SMACKFLAGS    +=--verifier=$(VERIFIER)
SMACKFLAGS    +=--entry-points $(ENTRYPOINTS)

### Flags for frontend use (C -> BPL)
FRONTFLAGS    ?=-t $(SMACKFLAGS)

### Flags for backend use (BPL -> verification)
BACKFLAGS     ?=$(SMACKFLAGS) --unroll $(UNROLL) --loop-limit $(LOOPLIMIT)

## Additional flags
SMACKOPTS     ?=

# Main verification target for examples
all: verify

## Generate a .bpl model from a (multi-file) C program through SMACK
$(SMACKOUT): $(LIBSIN) $(SMACKIN)
	@/bin/echo -en "\e[1;91mGenerating BPL model\e[0m\n"
	smack.py $(FRONTFLAGS) -bpl $(SMACKOUT) $(LIBSIN) $(SMACKIN)

smackout: $(SMACKOUT)

## Generate the product .bpl program using BAM
$(BAMOUT): $(SMACKOUT)
	@/bin/echo -en "\e[1;91mGenerating product program\e[0m\n"
	ruby -I$(BAMPATH)/lib $(BAMPATH)/bin/bam --shadowing $(SMACKOUT) -o $(BAMOUT)

bamout: $(BAMOUT)

## Verify the product .bpl program using corral through SMACK
verify: $(BAMOUT)
	@/bin/echo -en "\e[1;91mVerifying product program for constant-time violations\e[0m\n"
	smack.py $(BACKFLAGS) $(BAMOUT)

## Verify the product .bpl program using BAM and without unrolling loops
verify-no-unroll: $(BAMOUT)
	@/bin/echo -en "\e[1;91mVerifying product program for constant-time violations (no unrolling)\e[0m\n"
	@/bin/echo "This is likely to only work on .bpl files generated with VERIFIER=boogie."
	$(BOOGIE) /nologo /errorLimit:5 /doModSetAnalysis $(BAMOUT)

# Set up env. vars. (source the result)
setup:
	@echo "export BOOGIE=~/repositories/ct-verif/tools/boogie/Binaries/Boogie.exe"
	@echo "export CORRAL=~/repositories/ct-verif/tools/corral/bin/Debug/corral.exe"

# Targets for updating and making local tools in local submodules
local-update:
	git submodule update

local-z3:
	cd $(Z3PATH)/build && make

clean-local-z3:
	rm -rf $(Z3PATH)/build

local-boogie:
	cd $(BOOGIEPATH) && xbuild Source/Boogie.sln
	ln -s $(Z3PATH)/build/z3 $(BOOGIEPATH)/Binaries/z3.exe

clean-local-boogie:
	rm $(BOOGIEPATH)/Binaries/z3.exe

local-smack:
	mkdir $(SMACKPATH)/build
	cd $(SMACKPATH)/build && cmake -DCMAKE_C_COMPILER=clang -DCMAKE_CXX_COMPILER=clang++ -DCMAKE_BUILD_TYPE=Debug ..
	make -C $(SMACKPATH)/build

clean-local-smack:
	rm -rf $(SMACKPATH)/build

local-tools: local-z3 local-boogie local-smack

clean-local-tools: clean-local-smack clean-local-boogie clean-local-z3
