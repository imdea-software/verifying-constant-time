export WD         = ${PWD}
export EXAMPLE    = tea.c

all: encrypt decrypt-cpa decrypt-cca

encrypt:
	@make encrypt-verify

encrypt-%:
	ENTRYPOINTS=encrypt_wrapper SUFFIX=encrypt make -C ../../bin $*

decrypt-cpa:
	@make decrypt-cpa-verify

decrypt-cpa-%:
	ENTRYPOINTS=decrypt_cpa_wrapper SUFFIX=decrypt_cpa make -C ../../bin $*

decrypt-cca:
	@make decrypt-cca-verify

decrypt-cca-%:
	ENTRYPOINTS=decrypt_cca_wrapper SUFFIX=decrypt_cca make -C ../../bin $*
