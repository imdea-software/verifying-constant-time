MAKEFILES = $(shell find examples -name Makefile -depth 2)
EXAMPLES = $(dir $(MAKEFILES))

all: $(EXAMPLES:%=%.target)

%.target:
	@cd $(@:%.target=%) && make
