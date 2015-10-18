export WD =${PWD}
export ENTRYPOINTS =ssl3_cbc_remove_padding_wrapper

verify:
	EXAMPLE=ssl3_cbc_remove_padding_wrapper.c make -C ../../bin verify

verify_bug:
	EXAMPLE=ssl3_cbc_remove_padding_wrapper_error.c make -C ../../bin verify

clean:
	rm *.bpl
