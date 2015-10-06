export WD        ?= ${PWD}
export CPATH     ?= ${PWD}/rlwekex
export UNROLL    ?= 64
export LOOPLIMIT ?= 64

sample:
	@make sample-verify

sample-%:
	ENTRYPOINTS="sample_ct_wrapper"\
         LIBS="rlwekex/rlwe_rand.c rlwekex/fft.c rlwekex/rlwe.c"\
         EXAMPLE="sample_ct.c"\
         make -C ../../bin $*
