export WD        ?= ${PWD}
export CPATH     ?= ${PWD}/mbedtls/include
export UNROLL    ?= 3
export LOOPLIMIT ?= 64

sha256:
	@make sha256-all

sha256-%:
	ENTRYPOINTS="mbedtls_sha256_wrapper"\
         LIBS="mbedtls/library/sha256.c" EXAMPLE="sha256.c"\
         make -C ../../bin $<

verify-des-encrypt:
	ENTRYPOINTS=mbedtls_des3_ENcrypt_cbc_wrapper\
         LIBS="mbedtls/library/des.c" EXAMPLE="des.c"\
         make -C ../../bin verify

verify-des-decrypt:
	ENTRYPOINTS=mbedtls_des3_DEcrypt_cbc_wrapper\
         LIBS="mbedtls/library/des.c" EXAMPLE="des.c"\
         make -C ../../bin verify

build-des:
	clang -DCOMPILE mbedtls/library/des.c des.c -o des

build-sha256:
	clang -DCOMPILE mbedtls/library/sha256.c sha256.c -o sha256
