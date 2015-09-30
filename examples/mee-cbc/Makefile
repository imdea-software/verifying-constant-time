export WD        ?= ${PWD}
export LIBS      ?= mac-then-encrypt/aes128.c mac-then-encrypt/aes128cbc.c \
                    mac-then-encrypt/sha256blocks.c mac-then-encrypt/hmac.c \
                    mac-then-encrypt/verify_32.c \
                    mac-then-encrypt/pad128.c mac-then-encrypt/pad_cbc_aes128.c \
                    mac-then-encrypt/mac_then_encrypt.c
export EXAMPLE     ?= mee-cbc.c
export ENTRYPOINTS ?= dv_wrapper
export UNROLL      ?= 20
export LOOPLIMIT   ?= 20
export CPATH       += ${PWD}/mac-then-encrypt

mee-cbc:
	make -C ../../bin verify

mee-cbc-%:
	make -C ../../bin $*
