export WD        ?= ${PWD}
export CPATH     ?= ${PWD}/rlwekex

sample:
	@make sample-verify

sample-%:
	ENTRYPOINTS="sample_ct_wrapper"\
         LIBS="rlwekex/rlwe_rand.c rlwekex/rlwe.c"\
         EXAMPLE="sample_ct.c"\
         make -C ../../bin $*
