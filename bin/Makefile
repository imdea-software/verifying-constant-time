# By default, for testing, we run the sort example
WD          ?=../examples/sort
LIBS        ?=
EXAMPLE     ?=sort.c
ENTRYPOINTS ?=sort3_wrapper
UNROLL      ?=1
LOOPLIMIT   ?=1
MODELFILE   ?=$(EXAMPLE:.c:.model)

# By default, use local tools
Z3PATH      ?=../tools/z3
SMACKPATH   ?=../tools/smack
BAMPATH     ?=../tools/bam-bam-boogieman
BOOGIEPATH  ?=../tools/boogie
CORRALPATH  ?=../tools/corral

# Finalizing env. var. init.
## Binaries and Path
PATH        :=$(SMACKPATH)/bin:$(SMACKPATH)/build:$(CORRALPATH)/bin:$(PATH)
export PATH

export BOOGIE      ?=$(BOOGIEPATH)/Binaries/Boogie.exe
export CORRAL      ?=$(CORRALPATH)/bin/Debug/corral.exe

## Files
LIBSIN      ?=$(patsubst %,$(WD)/%,$(LIBS))
SMACKIN     ?=$(WD)/$(EXAMPLE)
SMACKOUT    ?=$(WD)/$(EXAMPLE:.c=.bpl)
BAMOUT      ?=$(WD)/$(EXAMPLE:.c=-instrumented.bpl)

## SMACK flags
### Common flags
SMACKFLAGS  ?=$(SMACKOPTS) --verifier=corral --entry-points $(ENTRYPOINTS)

### Flags for frontend use (C -> BPL)
FRONTFLAGS  ?=-t $(SMACKFLAGS)

### Flags for backend use (BPL -> verification)
BACKFLAGS   ?=$(SMACKFLAGS) --unroll $(UNROLL) --loop-limit $(LOOPLIMIT)

## Additional flags
SMACKOPTS   ?=

# Main verification target for examples
all: verify

## Generate a .bpl model from a (multi-file) C program through SMACK
$(SMACKOUT):
	@echo "Generating BPL model"
	smack.py $(FRONTFLAGS) -bpl $(SMACKOUT) $(LIBSIN) $(SMACKIN)

## Generate the product .bpl program using BAM
$(BAMOUT): $(SMACKOUT)
	@echo "Generating product program"
	bam --shadowing --modifies-correction $(SMACKOUT) -o $(BAMOUT)

## Verify the product .bpl program using corral through SMACK
verify: $(BAMOUT)
	@echo "Verifying product program for constant-time violations"
	smack.py $(BACKFLAGS) $(BAMOUT)


# Set up env. vars. (source the result)
setup:
	@echo "export BOOGIE=~/repositories/ct-verif/tools/boogie/Binaries/Boogie.exe"
	@echo "export CORRAL=~/repositories/ct-verif/tools/corral/bin/Debug/corral.exe"

# Targets for updating, making, installing tools from local submodules
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

local-bam:
	cd $(BAMPATH) && gem build bam-bam-boogieman.gemspec

clean-local-bam:
	rm $(BAMPATH)/bam-bam-boogieman-1.0.pre.*

install-bam:
	sudo gem install $(BAMPATH)/bam-bam-boogieman-1.0.pre.*

uninstall-bam:
	sudo gem uninstall bam-bam-boogieman

local-tools: local-z3 local-boogie local-smack local-bam

clean-local-tools: clean-local-bam clean-local-smack clean-local-boogie clean-local-z3

remake-bam:
	make uninstall-bam
	make clean-local-bam
	make local-bam
	make install-bam
