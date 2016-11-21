export WD          ?= ${PWD}
export LIBS        ?= donna/curve25519-donna.c
export EXAMPLE     ?= donna.c
export ENTRYPOINTS ?= curve25519_donna_wrapper
export UNROLL      ?= 45
export LOOPLIMIT   ?= 64

.PHONY: donna

donna: $(LIBS) $(EXAMPLE)
	@make -C ../../bin verify

donna-%:
	@make -C ../../bin $*
