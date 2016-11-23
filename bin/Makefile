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

ctverif = ../bin/ct-verif.rb
FLAGS = --clang-options="$(CLANGOPTS)" -e $(ENTRYPOINTS) --unroll-limit $(UNROLL) --time-limit 5

## Files
LIBSIN        ?=$(patsubst %,$(WD)/%,$(LIBS))
SMACKIN       ?=$(WD)/$(EXAMPLE)
SMACKOUT      ?=$(WD)/$(BASE:.c=$(SUFFIX).bpl)
BAMOUT        ?=$(WD)/$(BASE:.c=$(SUFFIX).product.bpl)

# Main verification target for examples
all: verify

## Generate a .bpl model from a (multi-file) C program through SMACK
$(SMACKOUT): $(LIBSIN) $(SMACKIN)
	@echo
	@echo "Compile" | figlet
	@echo "$(EXAMPLE): $(ENTRYPOINTS)"
	@echo
	@$(ctverif) $(FLAGS) -f $(SMACKOUT) --no-product --no-verify $(LIBSIN) $(SMACKIN)

smackout: $(SMACKOUT)

## Generate the product .bpl program using BAM
$(BAMOUT): $(SMACKOUT)
	@echo
	@echo "Product" | figlet
	@echo "$(EXAMPLE): $(ENTRYPOINTS)"
	@echo
	@$(ctverif) $(FLAGS) --no-compile --no-verify $(SMACKOUT)

bamout: $(BAMOUT)

## Verify the product .bpl program through SMACK
verify: $(BAMOUT)
	@echo
	@echo "Verify" | figlet
	@echo "$(EXAMPLE): $(ENTRYPOINTS)"
	@$(ctverif) $(FLAGS) --no-compile --no-product $(BAMOUT)

local-update:
	git submodule update
