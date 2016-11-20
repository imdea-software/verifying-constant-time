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

VERIFIER      ?=boogie

ifeq (boogie,$(VERIFIER))
	BACKEND?=boogie
	BACKENDOPTS?=/doModSetAnalysis /nologo /timeLimit:5
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
FRONTFLAGS    ?=-t $(SMACKFLAGS) --unroll $(UNROLL) --loop-limit $(LOOPLIMIT) -q

### Flags for backend use (BPL -> verification)
BACKFLAGS     ?=$(SMACKFLAGS) --unroll $(UNROLL) --loop-limit $(LOOPLIMIT)

## Additional flags
SMACKOPTS     ?=

# Main verification target for examples
all: verify

## Generate a .bpl model from a (multi-file) C program through SMACK
$(SMACKOUT): $(LIBSIN) $(SMACKIN)
	@echo
	@echo "Compile" | figlet
	@echo "$(EXAMPLE): $(ENTRYPOINTS)"
	@echo
	@smack $(FRONTFLAGS) -bpl $(SMACKOUT) $(LIBSIN) $(SMACKIN)

smackout: $(SMACKOUT)

## Generate the product .bpl program using BAM
$(BAMOUT): $(SMACKOUT)
	@echo
	@echo "Product" | figlet
	@echo "$(EXAMPLE): $(ENTRYPOINTS)"
	@echo
	@bam -q --shadowing $(SMACKOUT) -o $(BAMOUT)

bamout: $(BAMOUT)

## Verify the product .bpl program through SMACK
verify: $(BAMOUT)
	@echo
	@echo "Verify" | figlet
	@echo "$(EXAMPLE): $(ENTRYPOINTS)"
	@$(BACKEND) $(BACKENDOPTS) $(BAMOUT)

local-update:
	git submodule update
