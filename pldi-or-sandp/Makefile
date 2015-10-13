# -*- Makefile -*-

# --------------------------------------------------------------------
export PATH      := ${PWD}/../scripts/:${PATH}
export BIBINPUTS := ${PWD}/../bib/:${BIBINPUTS}
export TEXINPUTS := ${TEXINPUTS}

# --------------------------------------------------------------------
MAIN    ?= main
LATEXMK := latexmk -output-directory=_build_$(MAIN)
LATEXMK += -synctex=1 -file-line-error
EXTRAMK ?=
LINKS   := log synctex.gz

ifneq (${DRAFT},)
KO      := -
LATEXMK += -e '$$max_repeat = 1' -interaction=nonstopmode
endif

LATEXMK += $(EXTRAMK)

# --------------------------------------------------------------------
.PHONY: all links force continuous scratch clean purge __force__

define latex
	$(LATEXMK) $(1) -pdf $(MAIN); err=$$?; \
	[ -f _build_$(MAIN)/$(MAIN).pdf ] && cp _build_$(MAIN)/$(MAIN).pdf .; \
	exit $$err
endef

all: prepare __force__
	$(KO)$(call latex)

force: prepare __force__
	$(KO)$(call latex,-g)

continuous: prepare __force__
	$(KO)$(call latex,-pvc) &

prepare: __force__
	for i in $(LINKS); do ln -sf _build_$(MAIN)/$(MAIN).$$i .; done
	rm -f _build_$(MAIN)/$(MAIN).pdf
#	make -C ../../bib

scratch: purge all
	@true

clean:
	rm -rf _build_$(MAIN) $(LINKS:%=$(MAIN).%)

purge: clean
	rm -f $(MAIN).pdf
