# Verifying Constant-Time Implementations

A tool for verifying constant time implementations, and a case study of
verified constant-time implementations.

## Issues

The following examples are currently stable:

* curve25519-donna

* ftfp: except `fix_pow`

* mee-cbc

* openssl: except `ssl3_cbc_digest_record_wrapper`

* pkcs

* polarssl: except `mbedtls_des3_DEcrypt_cbc_wrapper`

* rlwe

* sodium: `salsa20`, `chacha20`

* sort

* tea

The following examples are currently unstable:

* ftfp: `fix_pow`

* openssl: `ssl3_cbc_digest_record_wrapper`

* polarssl: `mbedtls_des3_DEcrypt_cbc_wrapper`

* qhasm: apparently never worked

* sodium: all after `crypto_hash_sha256_wrapper`
