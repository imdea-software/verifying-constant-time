export WD          ?= ${PWD}
export CPATH       += ${PWD}/libsodium/src/libsodium/include:${PWD}/libsodium/src/libsodium/include/sodium

LIBDIR             = libsodium/src/libsodium

# SALSA20
SALSA20_LIBS      = sodium/utils.c \
                    randombytes/sysrandom/randombytes_sysrandom.c randombytes/randombytes.c \
                    crypto_core/salsa20/ref/core_salsa20.c \
                    crypto_core/salsa20/core_salsa20_api.c

salsa20:
	@make salsa20-verify

salsa20-%:
	EXAMPLE=salsa20.c\
         ENTRYPOINTS=crypto_core_salsa20_wrapper\
         LIBS="$(patsubst %,$(LIBDIR)/%,$(SALSA20_LIBS))"\
	 make -C ../../bin $*

# CHACHA20
CHACHA20_LIBS      = sodium/utils.c \
                     randombytes/sysrandom/randombytes_sysrandom.c randombytes/randombytes.c \
                     crypto_stream/chacha20/ref/stream_chacha20_ref.c \
                     crypto_stream/chacha20/stream_chacha20_api.c

chacha20:
	@make chacha20-verify

chacha20-%:
	EXAMPLE=chacha20.c\
         ENTRYPOINTS=crypto_stream_chacha20_wrapper\
         LIBS="$(patsubst %,$(LIBDIR)/%,$(CHACHA20_LIBS))"\
	 make -C ../../bin $*

# SHA256
SHA256_LIBS      = sodium/utils.c \
                   randombytes/sysrandom/randombytes_sysrandom.c randombytes/randombytes.c \
                   crypto_hash/sha256/cp/hash_sha256.c

sha256_transform:
	@make sha256_transform-verify

sha256_transform-%:
	EXAMPLE=sha256.c\
         ENTRYPOINTS=SHA256_Transform_wrapper\
         LIBS="$(patsubst %,$(LIBDIR)/%,$(SHA256_LIBS))"\
	 make -C ../../bin $*


sha256:
	@make sha256-verify

sha256-%:
	EXAMPLE=sha256.c\
         ENTRYPOINTS=crypto_hash_sha256_wrapper\
         LIBS="$(patsubst %,$(LIBDIR)/%,$(SHA256_LIBS))"\
	 make -C ../../bin $*


# SHA512
SHA512_LIBS      = sodium/utils.c \
                   randombytes/sysrandom/randombytes_sysrandom.c randombytes/randombytes.c \
                   crypto_hash/sha512/cp/hash_sha512.c

sha512:
	@make sha512-verify

sha512-%:
	EXAMPLE=sha512.c\
         ENTRYPOINTS=crypto_hash_sha512_wrapper\
         LIBS="$(patsubst %,$(LIBDIR)/%,$(SHA512_LIBS))"\
	 make -C ../../bin $*

# AUTH
AUTH_LIBS      = sodium/utils.c \
                 randombytes/randombytes.c randombytes/sysrandom/randombytes_sysrandom.c \
                 crypto_hash/sha256/cp/hash_sha256.c crypto_auth/hmacsha256/cp/hmac_hmacsha256.c

auth_pub:
	@make auth_pub-verify

auth_pub-%:
	EXAMPLE=auth.c\
         ENTRYPOINTS=crypto_auth_pub\
         LIBS="$(patsubst %,$(LIBDIR)/%,$(AUTH_LIBS))"\
         SUFFIX="_pub"\
	 make -C ../../bin $*

auth_prv:
	@make auth_prv-verify

auth_prv-%:
	EXAMPLE=auth.c\
         ENTRYPOINTS=crypto_auth_sec\
         LIBS="$(patsubst %,$(LIBDIR)/%,$(AUTH_LIBS))"\
         SUFFIX="_prv"\
	 make -C ../../bin $*


# POLY1305
POLY1305_LIBS      = sodium/utils.c \
                     randombytes/sysrandom/randombytes_sysrandom.c randombytes/randombytes.c \
                     crypto_verify/16/ref/verify_16.c \
                     crypto_onetimeauth/poly1305/donna/auth_poly1305_donna.c \
                     crypto_onetimeauth/poly1305/donna/verify_poly1305_donna.c

poly1305:
	@make poly1305-verify

poly1305-%:
	EXAMPLE=poly1305.c\
         ENTRYPOINTS=crypto_onetimeauth_poly1305_donna_wrapper\
         LIBS="$(patsubst %,$(LIBDIR)/%,$(POLY1305_LIBS))"\
	 make -C ../../bin $*


# AEAD (CHACHA20 + POLY1305)
AEAD_LIBS = sodium/utils.c \
            randombytes/randombytes.c randombytes/sysrandom/randombytes_sysrandom.c \
            crypto_stream/chacha20/ref/stream_chacha20_ref.c crypto_stream/chacha20/stream_chacha20_api.c \
            crypto_onetimeauth/crypto_onetimeauth.c crypto_onetimeauth/poly1305/onetimeauth_poly1305.c \
            crypto_onetimeauth/poly1305/donna/auth_poly1305_donna.c crypto_onetimeauth/poly1305/donna/verify_poly1305_donna.c \
            crypto_verify/16/ref/verify_16.c \
            crypto_aead/chacha20poly1305/sodium/aead_chacha20poly1305.c

aead:
	@make aead-verify

aead-%:
	EXAMPLE=aead.c\
         ENTRYPOINTS=crypto_aead_chacha20poly1305_decrypt_wrapper\
         LIBS="$(patsubst %,$(LIBDIR)/%,$(AEAD_LIBS))"\
	 make -C ../../bin $*
