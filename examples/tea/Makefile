export EXAMPLE    = ${PWD}/tea.c
export UNROLL     = 32

verify-encrypt:
	ENTRYPOINT=encrypt_wrapper make -C ../../bin verify

verify-decrypt-cpa:
	ENTRYPOINT=decrypt_cpa_wrapper make -C ../../bin verify

verify-decrypt-cca:
	ENTRYPOINT=decrypt_cca_wrapper make -C ../../bin verify
