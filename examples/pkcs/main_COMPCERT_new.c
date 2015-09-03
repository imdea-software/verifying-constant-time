#include "CAO_COMPCERT_new.h"
#include <stdio.h>

#define nLen 512
#define hLen 20
#define dbLen nLen-hLen-1
#define msgLen dbLen-hLen-1
#define TBlocks 25
#define TLen hLen*TBlocks
#define GInLen 4+hLen
#define HInLen 4+dbLen

typedef CAO_ubits8 CAO_Octet;
typedef CAO_vector CAO_nOctets;
typedef CAO_vector CAO_dbOctets;
typedef CAO_vector CAO_msgOctets;
typedef CAO_vector CAO_hOctets;
typedef CAO_vector CAO_TOctets;
typedef CAO_vector CAO_GInOctets;
typedef CAO_vector CAO_HInOctets;

void c_I2OSP(CAO_nOctets _r0, CAO_int c_x);
void c_Enc(CAO_int _r0,CAO_int c_e,CAO_msgOctets c_msg,CAO_hOctets c_lHash,CAO_hOctets c_seed, CAO_int n);
void c_Dec(CAO_msgOctets _r0,CAO_bool *_r1, CAO_int c_d,CAO_int c_c,CAO_hOctets c_lHash, CAO_int n);

long 
value(
	char c
	)
{
	switch (c)
	{
		case '0':
			return (0);
		case '1':
			return (1);
		case '2':
			return (2);
		case '3':
			return (3);
		case '4':
			return (4);
		case '5':
			return (5);
		case '6':
			return (6);
		case '7':
			return (7);
		case '8':
			return (8);
		case '9':
			return (9);
		case 'A':
		case 'a':
			return (10);
		case 'B':
		case 'b':
			return (11);
		case 'C':
		case 'c':
			return (12);
		case 'D':
		case 'd':
			return (13);
		case 'E':
		case 'e':
			return (14);
		case 'F':
		case 'f':
			return (15);
		default:
			return(0);
	}
}

void
zsadd(
	verylong a,
	long d,
	verylong b
	)
{
	szdecl(x,MAX_CAOINT_LEN);
	zintoz(d, x);
	zadd(a, x, b);
}

long
zstrtozbas(
	char *s,
	long base,
	verylong n
	)
{
	register long v;
	register long cnt = 0;
	register char c;

	zzero(n);

	c = s[cnt++];
	while (((v = value(c)) < base) && ((v) || (c == '0')) )
	{
		zsmul(n,base,n);
		zsadd(n,v,n);
		c = s[cnt++];
	}

	cnt --;
	return(cnt);
}

void zwrite(verylong a) {
	long i;
	for (i = 0; i<MAX_CAOINT_LEN; i++) {
		printf("%ld,",a[i]);
	}
	printf("\n");
}

void c_TestEncrypt() {
	int i;
	zdecl(t_n,MAX_CAOINT_LEN);
	unsigned char t_lh[20] = { 0xda, 0x39, 0xa3, 0xee, 0x5e, 0x6b, 0x4b, 0x0d, 0x32, 0x55, 
        0xbf, 0xef, 0x95, 0x60, 0x18, 0x90, 0xaf, 0xd8, 0x07, 0x09 };
	unsigned char t_s[20] = {  0xaa, 0xfd, 0x12, 0xf6, 0x59, 0xca, 0xe6, 0x34, 0x89, 0xb4, 
        0x79, 0xe5, 0x07, 0x6d, 0xde, 0xc2, 0xf0, 0x6c, 0xb5, 0x8f };
	unsigned char t_msg[msgLen];
	zdecl(t_e,MAX_CAOINT_LEN);
	zdecl(t_c,MAX_CAOINT_LEN);
	zstrtozbas("10001",16,t_e);
	zstrtozbas("d1f17347e5ccaaf9561d6a494751a4433e4d3b962f87a5ab0c305efa2c9a2d270e97cd7760e3efdcbd0c1ad9ab7045444e497f755a4b22c75692762c93db2170d588d3dcc1c22ed0c9ad3ea2dd05766827acebc3bd18c971f22bc14bb024085552a415eb4f5d924211d193ea31e5cf2a4fe53cf74455df7c26b0f3964af1e13789077eb08447e009a4e4bf80c93a030cd659e889fd4e2f24963a641f65cbd20760772197137cf87de173130a35bdcee737c32b608748a5b2a30b5ceffeb132724c2aaa418afbf5aa1e18f564e0ec2a698150db06e97b90b1357e407104001c7c2d13c78019618fd2292fd7f8ef639d283ee435b44f065a464505d7605a1cf35a92853b4f8dd87610541000f03747ce7ca3995ac80aedecf529b13bbbb263dec5a2e6f4a289df5b66a49006cbaa2dec8d7d67d6e01be43ff759cd1190d879d01f2b6817ecd4db6bf41bf985f1336750f87482519fdd83d0006aaaa03dd3843b975095a82cb1a21fef1353660a1774e7d1c06ad09772aa156ff83bf38c36ca3d777f891e0d095b4eccdd71b2a349a828f7a9dad5b92d9e29b504578f1df32902e7dce4b143bec9683a75f7defb3511bffaf6cb8f318b6176ff69f95211b50e55c5918613bd9af84cb0c5009eed7fa5ebf8709ae2b090e8e07b06b0a35a3a957d4933b054beed7b40ffef8c5fa814cfc73e724e1861aa86b3a4aa8f79c07781bd7f",16,t_n);
	for (i=0;i<msgLen-16;i++) {
		t_msg[i]=0x00;
	}
	t_msg[msgLen-1]=0x49;
	t_msg[msgLen-2]=0x2c;
	t_msg[msgLen-3]=0xd3;
	t_msg[msgLen-4]=0x90;
	t_msg[msgLen-5]=0xbc;
	t_msg[msgLen-6]=0x5b;
	t_msg[msgLen-7]=0xa0;
	t_msg[msgLen-8]=0xc8;
	t_msg[msgLen-9]=0xa7;
	t_msg[msgLen-10]=0x32;
	t_msg[msgLen-11]=0xfd;
	t_msg[msgLen-12]=0x69;
	t_msg[msgLen-13]=0x95;
	t_msg[msgLen-14]=0xe9;
	t_msg[msgLen-15]=0x36;
	t_msg[msgLen-16]=0xd4;
	c_Enc(t_c,t_e, t_msg, t_lh, t_s,t_n);
	printf("\n");
	zwrite(t_c);
	printf("\n");
}

void c_TestDecrypt() {
	int i;
    int res;
    unsigned char msg[msgLen];
	zdecl(t_n,MAX_CAOINT_LEN);
	zdecl(t_d,MAX_CAOINT_LEN);
	unsigned char t_lh[20] = { 0xda, 0x39, 0xa3, 0xee, 0x5e, 0x6b, 0x4b, 0x0d, 0x32, 0x55, 
        0xbf, 0xef, 0x95, 0x60, 0x18, 0x90, 0xaf, 0xd8, 0x07, 0x09 };
	zdecl(t_c,MAX_CAOINT_LEN);
	zstrtozbas("655ce845fc6396e10f7ce0464512dbf6436c52aaae8415aec211d0a98543632d8a542cb5c8a804b554e93545870a8bc6f0ed77869773d374df0d93d4ee064cdd079c2a7e596681e7f89796b857723dbb07fceb4ff44ab568387e7bb329761c37e5d0a76c97431c4c9e01cc22b4b8ba0f39c7fa69802addde39681213ac57a05f89df7e81873c94a4d362463bcdec1e70e245428aed2c0482ebad818dcf3e5b478881bc4c0ef2b59f416ca7f2b403d293bc4e94f0e42065301c9c6de0c9dd8ff7b3629e154b1f5f7b2550f39a2326a34b914e129201c4d1155e3878b09837dd88eed2afeddf53457738bf8accfbf7e276fdf67d1f735023e1ed8d667174d0a9855f7decbc79fd409198bf6dd3a385e9cba6b9d8bf034adcd8fdf0414a6b02be3202b2fb874be05d12bc668efcb156ac9e9cbbac07f034892fcb4df1a5cc51bb96b1917d1fff36cfb7ced0f6c812e56caebc7e76258786455d9a4b9503122e8456e3b828a2c78258ab81cc386dc5e4c8a4c5c47e184abd71f7dc32ef4d35d8b2d1596ff9e72d7e8630b2fd2700355bf8b78dc3e87f55ce5d58626b8a669f7de82a44a7663df06963aa8d6b92b8decb4afd25f4b098be5ae5664944146df2728f544ac8b8483b532ffc590eb62126a15a0105e49932d0074aeefae11d1e732ef7aba491cab5d9bf74118278195f662fdfa56a99de084e529aabb776d1fb1bac6061",16,t_d);
	zstrtozbas("d1f17347e5ccaaf9561d6a494751a4433e4d3b962f87a5ab0c305efa2c9a2d270e97cd7760e3efdcbd0c1ad9ab7045444e497f755a4b22c75692762c93db2170d588d3dcc1c22ed0c9ad3ea2dd05766827acebc3bd18c971f22bc14bb024085552a415eb4f5d924211d193ea31e5cf2a4fe53cf74455df7c26b0f3964af1e13789077eb08447e009a4e4bf80c93a030cd659e889fd4e2f24963a641f65cbd20760772197137cf87de173130a35bdcee737c32b608748a5b2a30b5ceffeb132724c2aaa418afbf5aa1e18f564e0ec2a698150db06e97b90b1357e407104001c7c2d13c78019618fd2292fd7f8ef639d283ee435b44f065a464505d7605a1cf35a92853b4f8dd87610541000f03747ce7ca3995ac80aedecf529b13bbbb263dec5a2e6f4a289df5b66a49006cbaa2dec8d7d67d6e01be43ff759cd1190d879d01f2b6817ecd4db6bf41bf985f1336750f87482519fdd83d0006aaaa03dd3843b975095a82cb1a21fef1353660a1774e7d1c06ad09772aa156ff83bf38c36ca3d777f891e0d095b4eccdd71b2a349a828f7a9dad5b92d9e29b504578f1df32902e7dce4b143bec9683a75f7defb3511bffaf6cb8f318b6176ff69f95211b50e55c5918613bd9af84cb0c5009eed7fa5ebf8709ae2b090e8e07b06b0a35a3a957d4933b054beed7b40ffef8c5fa814cfc73e724e1861aa86b3a4aa8f79c07781bd7f",16,t_n);
	zstrtozbas("703512431821481980947744072509698449626051738817126747363439391835935635948164449041808318574790940251163338470165924564161469874461755470698017516771629575661155658206388523880400993585275598754857379477500713777849933121534213117059544652749702288425100194902091560546745025946315643358888767194841421009044523187272151933987534451740005322502552264756951412015663386950136898726087953658575000430499435782081129120154414636963871559125157892583235061635832756378255255251495237492629879810426074681273834196398015575965086449998229903340823789059972002488945682820240075940179613590421421137205220310639846329035872578489261909874177868632835570589979064605868492002037550258140616290548577057751586854021640186535733315988843897493520498195191554549410690296777716932315280254836423712087363549851880031311693639835780927872092657982437112812217712968209272664000567481418046478865737695917363504527766712082560426868458611866344036420364100514199132895212363860592271249076505956264367932164130461174405881193715721867784970025020247009412068099858843318911077017020039732279882653656522948636560887354742555105655021666080121258745145990696681692063210579016164890735754970014283341047716646478709558985534612768367422947555558",10,t_c);
    c_Dec(msg,&res,t_d, t_c, t_lh,t_n);
	printf("%d\n",res);
	for (i=0;i<msgLen;i++) {
		printf("%d,",msg[i]);
	}
	printf("\n");		
}
int main(void) {
	c_TestEncrypt();
	c_TestDecrypt();
	return 0;
}