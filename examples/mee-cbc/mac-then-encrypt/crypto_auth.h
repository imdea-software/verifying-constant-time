#ifndef crypto_auth_H
#define crypto_auth_H

#define CRYPTO_BYTES 32
#define CRYPTO_KEYBYTES 32

extern int crypto_auth(unsigned char *,const unsigned char *,unsigned long,const unsigned char *);
extern int crypto_auth_verify(const unsigned char *,unsigned long, unsigned long,const unsigned char *);

#endif
