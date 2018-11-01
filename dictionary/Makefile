define m4
__HEADER([Josef Kubin], [2018/05/12], [dictionary])
___DESCR([dictionary in both direction])
___POINT([M4 dictionary])
___USAGE([make h])
endef

PROJECT = $(notdir $(PWD))
DEBUG_FILE = debug.m4

DICT_SRC = brno.mc

#TARGETS += debug

TARGETS += forward.csv
TARGETS += forward.html
TARGETS += forward.o
TARGETS += forward.xml
TARGETS += forward_loop.csv
TARGETS += forward_raw.xml
TARGETS += reverse.html
TARGETS += reverse.o
TARGETS += reverse.xml

# DICT_FLAGS = -DFLAGS=dni

.SECONDARY:
.SUFFIXES:


#:all	create all targets
.PHONY: all
all: $(TARGETS)

%_raw.xml: xml_raw.m4 %.mc
	m4 $^ > $@

%.xml: common.m4 dict.m4 xml.m4 %.mc
	m4 $^ > $@

%.csv: csv.m4 %.mc
	m4 $^ > $@

%_loop.csv: csv_loop.m4 %.mc
	m4 $^ > $@

%.c: common.m4 dict.m4 c_def.m4 c.m4 %.mc
	m4 $^ > $@

%.html: common.m4 dict.m4 html_def.m4 html.m4 %.mc
	m4 -DTARGET_FILE='$@' $^ > $@

%.mc: Makefile fwd_rev.m4 %.m4 $(DICT_SRC)
	m4 $(DICT_FLAGS) $(wordlist 2, $(words $^), $^) > $@

%.o: %.c
	gcc -c -o $@ $<


#:dbg/debug	debugging
.PHONY: debug dbg
debug dbg:
	> $(DEBUG_FILE)


#:cl/clean	removes generated files
.PHONY: clean cl
clean cl:
	$(RM) $(DEBUG_FILE) *.{xml,html,c,o,csv} forward.mc reverse.mc


#:h/help	prints this text
.PHONY: help h
help h:
	@sed -n '/^#:/{s//\x1b[1;40;38;5;82mmk /;s/\t/\x1b[m /;p}' Makefile | sort	# ]]	<--- fix for m4
