unroll = 3
looplimit = 64
cflags = -Imbedtls/include
extras = mbedtls/library/sha256.c mbedtls/library/des.c

include ../../lib/ct-verif.mk

GOALS :=
GOALS += mbedtls_sha256_wrapper@sha256.c
GOALS += mbedtls_des3_ENcrypt_cbc_wrapper@des.c
GOALS += mbedtls_des3_DEcrypt_cbc_wrapper@des.c

all: $(GOALS:%=%.$(v))
