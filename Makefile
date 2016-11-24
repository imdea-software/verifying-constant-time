MAKEFILES = $(shell find examples -name Makefile -depth 2)
EXAMPLES = $(dir $(MAKEFILES))

logs = $(shell find . -name "*.log")
attempts = $(shell grep "verifier version" $(logs) | wc -l | tr -d ' ')
verified = $(shell grep "verifier finished .* [1-9][0-9]* verified" $(logs) | wc -l | tr -d ' ')
errors = $(shell grep 'verifier finished .* [1-9][0-9]* error' $(logs) | wc -l | tr -d ' ')

.PHONY: all %.target

all: $(EXAMPLES:%=%.target)
	@echo
	@echo Results | figlet
	@echo $(attempts) attempts
	@echo $(verified) verified
	@echo $(errors) errors

%.target:
	@cd $(@:%.target=%) && make
