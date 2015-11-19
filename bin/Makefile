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

VERIFIER      ?=boogie

# Finalizing env. var. init.
## Binaries and Path
PATH          :=$(PATH):$(BAMPATH)/bin:$(SMACKPATH)/bin
PATH          :=$(PATH):$(SMACKPATH)/build:$(CORRALPATH)/bin
export PATH

## Local/Specified verifiers
export BOOGIE ?=$(BOOGIEPATH)/Binaries/Boogie.exe
export CORRAL ?=$(CORRALPATH)/bin/Debug/corral.exe

## Selecting the BAM folder based on presence in $PATH
# TODO: do a similar thing for other tools if this works across
# platforms?
export BAMPATH =`which bam | sed s/.......$$//`

ifeq (boogie,$(VERIFIER))
	BACKEND?=boogie
	BACKENDOPTS?=/doModSetAnalysis
else
	BACKEND?=corral
endif

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
FRONTFLAGS    ?=-t $(SMACKFLAGS) --unroll $(UNROLL) --loop-limit $(LOOPLIMIT)

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

## Verify the product .bpl program through SMACK
verify: $(BAMOUT)
	@/bin/echo -en "\e[1;91mVerifying product program for constant-time violations\e[0m\n"
	$(BACKEND) $(BACKENDOPTS) $(BAMOUT)

# Set up env. vars. (source the result)
setup:
	@echo "# If you can read this, you should use \"eval \`make setup\`\" instead\n"
	@echo "BOOGIE=$(BOOGIE); export BOOGIE;"
	@echo "CORRAL=$(CORRAL); export CORRAL;"

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
