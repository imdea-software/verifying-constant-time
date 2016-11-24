include ../../lib/ct-verif.mk

L = libsodium/src/libsodium

unroll = 3
looplimit = 64
cflags += -I$(L)/include
cflags += -I$(L)/include/sodium
extras += $(L)/sodium/utils.c
extras += $(L)/randombytes/sysrandom/randombytes_sysrandom.c
extras += $(L)/randombytes/randombytes.c

GOALS :=

GOALS += crypto_core_salsa20_wrapper@salsa20.c
%salsa20.c.$(c): extras += $(L)/crypto_core/salsa20/ref/core_salsa20.c
%salsa20.c.$(c): extras += $(L)/crypto_core/salsa20/core_salsa20_api.c

GOALS += crypto_stream_chacha20_wrapper@chacha20.c
%chacha20.c.$(c): extras += $(L)/crypto_stream/chacha20/ref/stream_chacha20_ref.c
%chacha20.c.$(c): extras += $(L)/crypto_stream/chacha20/stream_chacha20_api.c

GOALS += SHA256_Transform_wrapper@sha256.c
GOALS += crypto_hash_sha256_wrapper@sha256.c
%sha256.c.$(c): extras += $(L)/crypto_hash/sha256/cp/hash_sha256.c

GOALS += crypto_hash_sha512_wrapper@sha512.c
%sha512.c.$(c): extras += $(L)/crypto_hash/sha512/cp/hash_sha512.c

GOALS += crypto_auth_pub@auth.c
GOALS += crypto_auth_sec@auth.c
%auth.c.$(c): extras += $(L)/crypto_hash/sha256/cp/hash_sha256.c
%auth.c.$(c): extras += $(L)/crypto_auth/hmacsha256/cp/hmac_hmacsha256.c

GOALS += crypto_onetimeauth_poly1305_donna_wrapper@poly1305.c
%poly1305.c.$(c): extras += $(L)/crypto_verify/16/ref/verify_16.c
%poly1305.c.$(c): extras += $(L)/crypto_onetimeauth/poly1305/donna/auth_poly1305_donna.c
%poly1305.c.$(c): extras += $(L)/crypto_onetimeauth/poly1305/donna/verify_poly1305_donna.c

GOALS += crypto_aead_chacha20poly1305_decrypt_wrapper@aead.c
%aead.c.$(c): extras += $(L)/crypto_stream/chacha20/ref/stream_chacha20_ref.c
%aead.c.$(c): extras += $(L)/crypto_stream/chacha20/stream_chacha20_api.c
%aead.c.$(c): extras += $(L)/crypto_onetimeauth/crypto_onetimeauth.c
%aead.c.$(c): extras += $(L)/crypto_onetimeauth/poly1305/onetimeauth_poly1305.c
%aead.c.$(c): extras += $(L)/crypto_onetimeauth/poly1305/donna/auth_poly1305_donna.c
%aead.c.$(c): extras += $(L)/crypto_onetimeauth/poly1305/donna/verify_poly1305_donna.c
%aead.c.$(c): extras += $(L)/crypto_verify/16/ref/verify_16.c
%aead.c.$(c): extras += $(L)/crypto_aead/chacha20poly1305/sodium/aead_chacha20poly1305.c

all: sodium-built $(GOALS:%=%.$(v))

.PHONY: sodium-built
sodium-built: libsodium/src/libsodium/include/sodium/version.h

libsodium/src/libsodium/include/sodium/version.h:
	cd libsodium && ./configure
