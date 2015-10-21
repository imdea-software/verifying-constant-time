#include <limits.h>

//CHAR
//@ lemma mean1 : \forall integer x, y; (x >= 0) && (x <= UINT_MAX) ==> (x & 255) == (x % 256);

//SHORT
//@ lemma mean2 : \forall integer x, y; (x >= 0) && (x <= UINT_MAX) ==> (x & 65535) == (x % 65535);

/*
 * Used by aes:
 *  - READ_CHAR_AS_INT
 *  - READ_INT_AS_CHAR
 *  - SAVE_CHAR_AS_INT
 */


#define ROTATE(VALUE,PLACES) ((VALUE<<PLACES)|(VALUE>>(32-PLACES)))

#define READ_INT_AS_CHAR(PTR, OFFSET) ((PTR[OFFSET>>2]>>((OFFSET&0x3)<<3))&0xff)

//MAYBE UNSAFE
#define READ_INT_AS_SHORT(PTR, OFFSET) ((((PTR[OFFSET>>2]>>24)&0xff)+((PTR[(OFFSET>>2)+1] & 0xff)<< 8))*((OFFSET&0x2)>>1)*(OFFSET&0x1)) \
												  +(((PTR[OFFSET>>2]>>((OFFSET&0x3)<<3))&0xffff)*((((OFFSET&0x2)>>1)^(OFFSET&0x1))^(!(OFFSET&0x3))))

#define READ_SHORT_AS_CHAR(PTR, OFFSET) ((PTR[OFFSET>>1]>>((OFFSET&0x1)<<3))& 0xff)

//MAYBE UNSAFE
#define READ_SHORT_AS_INT(PTR, OFFSET) (((PTR[(OFFSET>>1)+1]<< 16)+PTR[OFFSET>>1])*(!(OFFSET&0x1))) \
												  +(((PTR[(OFFSET>>1)+2]&0xff)<<24)+(PTR[(OFFSET>>1)+1]<<8)+(PTR[(OFFSET>>1)]>>8))*(OFFSET&0x1)

#define READ_CHAR_AS_INT(PTR, OFFSET) (PTR[OFFSET]+(PTR[OFFSET+1]<<8)+(PTR[OFFSET+2]<<16)+(PTR[OFFSET+3]<<24))

#define READ_CHAR_AS_SHORT(PTR, OFFSET) (PTR[OFFSET]+(PTR[OFFSET+1]<<8))

#define SAVE_INT_AS_CHAR(PTR,OFFSET,VALUE) ((PTR[OFFSET>>2]&ROTATE(0xffffff00,((OFFSET&0x3)<<3)))|((VALUE&0xff)<<((OFFSET&0x3)<<3)))

#define SAVE_CHAR_AS_INT(PTR,OFFSET,VALUE) PTR[OFFSET]=VALUE&0xff;PTR[OFFSET+1]=(VALUE&0xff00)>>8; \
														 PTR[OFFSET+2]=(VALUE&0xff0000)>>16;PTR[OFFSET+3]=(VALUE&0xff000000)>>24;

