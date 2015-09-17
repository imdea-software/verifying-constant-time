export CPATH=${PWD}/mbedtls/include

verify-des-encrypt:
	ENTRYPOINT=mbedtls_des3_ENcrypt_cbc_wrapper EXAMPLE='${PWD}/mbedtls/library/des.c ${PWD}/des.c' make -C ../../bin verify

verify-des-decrypt:
	ENTRYPOINT=mbedtls_des3_DEcrypt_cbc_wrapper EXAMPLE='${PWD}/mbedtls/library/des.c ${PWD}/des.c' make -C ../../bin verify

verify-sha256:
	ENTRYPOINT=mbedtls_sha256_wrapper EXAMPLE='${PWD}/mbedtls/library/sha256.c ${PWD}/des.c' make -C ../../bin verify
