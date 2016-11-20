export WD        ?= ${PWD}
export CPATH     ?= ${PWD}/rlwekex

ifeq ($(OS),Darwin)
	export SMACKOPTS ?= --clang-options="-I$(shell brew --prefix openssl)/include"
endif

sample:
	@make sample-verify

sample-%:
	ENTRYPOINTS="sample_ct_wrapper"\
         LIBS="rlwekex/rlwe_rand.c rlwekex/rlwe.c"\
         EXAMPLE="sample_ct.c"\
         make -C ../../bin $*
