#ifndef crypto_block_H
#define crypto_block_H

#define OUTPUTBYTES 16
#define INPUTBYTES  16
#define KEYBYTES    16

extern int crypto_block_encrypt(unsigned char *,const unsigned char *,const unsigned char *);
extern int crypto_block_decrypt(unsigned char *,const unsigned char *,const unsigned char *);

#endif
