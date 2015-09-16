export EXAMPLE    = ${PWD}/mac-then-encrypt/aes128.c ${PWD}/mac-then-encrypt/aes128cbc.c \
                    ${PWD}/mac-then-encrypt/sha256blocks.c ${PWD}/mac-then-encrypt/hmac.c \
                    ${PWD}/mac-then-encrypt/verify_32.c \
                    ${PWD}/mac-then-encrypt/pad128.c ${PWD}/mac-then-encrypt/pad_cbc_aes128.c \
                    ${PWD}/mac-then-encrypt/mac_then_encrypt.c \
                    ${PWD}/mee-cbc.c
export ENTRYPOINT = dv_wrapper
export UNROLL     = 32
export CPATH      += ${PWD}/mac-then-encrypt

verify:
	make -C ../../bin verify
