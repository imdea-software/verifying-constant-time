#ifndef crypto_stream_H
#define crypto_stream_H

#define OUTPUTBYTES 16
#define IVBYTES     16
#define KEYBYTES    16

extern int crypto_stream_encrypt(unsigned char *,const unsigned char *,unsigned long,const unsigned char *,const unsigned char *);
extern int crypto_stream_decrypt(unsigned char *,const unsigned char *,unsigned long,const unsigned char *,const unsigned char *);

#endif
