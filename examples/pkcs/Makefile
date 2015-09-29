export WD          ?=${PWD}
export LIBS        ?=caolip.c sha1_COMPCERT.c
export EXAMPLE     ?=RSA_OAEP_COMPCERT_new.c
export ENTRYPOINTS ?= c_Dec_wrapper
export UNROLL      ?= 4
export LOOPLIMIT   ?= 2

pkcs:
	make -C ../../bin verify

pkcs-%:
	make -C ../../bin $*
