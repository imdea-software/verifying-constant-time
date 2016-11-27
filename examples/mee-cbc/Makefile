include ../../lib/ct-verif.mk

extras = mac-then-encrypt/aes128.c mac-then-encrypt/aes128cbc.c \
        	mac-then-encrypt/sha256blocks.c mac-then-encrypt/hmac.c \
          mac-then-encrypt/verify_32.c mac-then-encrypt/pad128.c \
					mac-then-encrypt/pad_cbc_aes128.c mac-then-encrypt/mac_then_encrypt.c
cflags = -Imac-then-encrypt

goals += dv_wrapper@mee-cbc.c
goals += dv_wrapper@mee-cbc-declassify.c
