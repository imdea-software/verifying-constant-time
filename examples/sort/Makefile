include ../../lib/ct-verif.mk

GOALS = sort3_wrapper@sort.c sort3_wrapper@sort_negative.c sort3_wrapper@sort_multiplex.c

%sort_negative.c.$(v): secure := false

all: $(GOALS:%=%.$(v))
