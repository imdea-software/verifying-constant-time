export EXAMPLE    = ${PWD}/caolip.c ${PWD}/sha1_COMPCERT.c ${PWD}/RSA_OAEP_COMPCERT_new.c
export ENTRYPOINT ?= c_Dec_wrapper
export UNROLL     ?= 4096 #oops

verify:
	make -C ../../bin verify
