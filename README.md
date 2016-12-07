# Verifying Constant-Time Implementations

A tool for verifying constant time implementations, and a case study of
verified constant-time implementations.

## Issues

The following examples are currently stable:

* ftfp: except `fix_pow`

* openssl: except `ssl3_cbc_digest_record_wrapper`

* pkcs

* polarssl: except `mbedtls_des3_DEcrypt_cbc_wrapper`

* rlwe

* sort

* tea

* sodium: except `crypto_hash_sha{256,512}_wrapper` and after

The following examples are currently unstable:

* curve25519-donna

* ftfp: `fix_pow`

* mee-cbc

* openssl: `ssl3_cbc_digest_record_wrapper`

* polarssl: `mbedtls_des3_DEcrypt_cbc_wrapper`

* qhasm: apparently never worked

* sodium: timeout on `crypto_hash_sha{256,512}_wrapper`
