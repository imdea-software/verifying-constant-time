export WD         = ${PWD}
export EXAMPLE    = tea.c
export UNROLL     = 33
export LOOPLIMIT  = 33

verify-encrypt:
	ENTRYPOINTS=encrypt_wrapper make -C ../../bin verify

verify-decrypt-cpa:
	ENTRYPOINTS=decrypt_cpa_wrapper make -C ../../bin verify

verify-decrypt-cca:
	ENTRYPOINTS=decrypt_cca_wrapper make -C ../../bin verify
