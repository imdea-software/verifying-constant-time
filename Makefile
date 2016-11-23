MAKEFILES = $(shell find examples -name Makefile -depth 2)
EXAMPLES = $(dir $(MAKEFILES))

.PHONY: all %.target

all: $(EXAMPLES:%=%.target)

%.target:
	@cd $(@:%.target=%) && make
