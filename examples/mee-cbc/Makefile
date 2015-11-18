export WD          ?= ${PWD}
export LIBS        ?= mac-then-encrypt/aes128.c mac-then-encrypt/aes128cbc.c \
                      mac-then-encrypt/sha256blocks.c mac-then-encrypt/hmac.c \
                      mac-then-encrypt/verify_32.c \
                      mac-then-encrypt/pad128.c mac-then-encrypt/pad_cbc_aes128.c \
                      mac-then-encrypt/mac_then_encrypt.c
export ENTRYPOINTS ?= dv_wrapper
export CPATH       += ${PWD}/mac-then-encrypt

mee-cbc:
	@make mee-cbc-verify

declassify-mee-cbc:
	@make declassify-mee-cbc-verify

mee-cbc-%:
	EXAMPLE=mee-cbc.c\
	 make -C ../../bin $*

declassify-mee-cbc-%:
	EXAMPLE=mee-cbc-declassify.c\
         make -C ../../bin $*
