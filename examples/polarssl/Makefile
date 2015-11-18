export WD        ?= ${PWD}
export CPATH     ?= ${PWD}/mbedtls/include
export UNROLL    ?= 3
export LOOPLIMIT ?= 64

sha256:
	@make sha256-verify

sha256-%:
	ENTRYPOINTS=mbedtls_sha256_wrapper\
         LIBS="mbedtls/library/sha256.c" EXAMPLE="sha256.c"\
         make -C ../../bin $*

des-encrypt:
	@make des-encrypt-verify

des-encrypt-%:
	SUFFIX=_encrypt\
         ENTRYPOINTS=mbedtls_des3_ENcrypt_cbc_wrapper\
         LIBS="mbedtls/library/des.c" EXAMPLE="des.c"\
         make -C ../../bin $*

des-decrypt:
	@make des-decrypt-verify

des-decrypt-%:
	SUFFIX=_decrypt\
         ENTRYPOINTS=mbedtls_des3_DEcrypt_cbc_wrapper\
         LIBS="mbedtls/library/des.c" EXAMPLE="des.c"\
         make -C ../../bin $*

build-des:
	clang -c -DCOMPILE mbedtls/library/des.c des.c -o des.o

build-sha256:
	clang -c -DCOMPILE mbedtls/library/sha256.c sha256.c -o sha256.o
