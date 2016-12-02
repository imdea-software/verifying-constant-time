# Verifying Constant-Time Implementations

A tool for verifying constant time implementations, and a case study of
verified constant-time implementations.

## Issues

The following examples are currently stable:

* ftfp: except `fix_tan` and `fix_pow`

* pkcs

* polarssl: except `mbedtls_des3_DEcrypt_cbc_wrapper`

* rlwe

* sodium

* sort

* tea

The following examples are currently unstable:

* ftfp: `fix_tan` and `fix_pow`

* curve25519-donna

* polarssl: `mbedtls_des3_DEcrypt_cbc_wrapper`

* mee-cbc

* openssl

* qhasm
