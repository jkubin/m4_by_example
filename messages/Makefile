define m4
__HEADER([Josef Kubin], [2018/05/20], [messages])
___DESCR([easy source code generators collection])
___POINT([how to generate interdependent files from one macro-configuration file])
endef

PROJECT = $(notdir $(PWD))
DEBUG_FILE = debug.m4

# TARGETS += debug

TARGETS += c1.c
TARGETS += c2.c
TARGETS += c3.c
TARGETS += c4.c
TARGETS += h1.h
TARGETS += h2.h
TARGETS += h3.h
TARGETS += h4.h
TARGETS += h5.h
TARGETS += $(PROJECT).csv
TARGETS += $(PROJECT).xml
TARGETS += $(PROJECT).m4
TARGETS += $(PROJECT).html
TARGETS += $(PROJECT).json

.SUFFIXES:


#:all	generate all files
.PHONY: all
all: $(TARGETS)

%.c %.h: common.m4 %.m4 $(PROJECT).mc
	m4 $^ > $@

$(PROJECT)_%.mc: %.sed $(PROJECT).mc
	sed -f $^ > $@

$(PROJECT).json: json.m4 $(PROJECT)_json.mc
	m4 $^ > $@

$(PROJECT).html: html.m4 $(PROJECT)_html.mc
	m4 $^ > $@

$(PROJECT).%: %.m4 $(PROJECT).mc
	m4 $^ > $@


#:dbg/debug	debugging
.PHONY: debug dbg
debug dbg:
	> $(DEBUG_FILE)


#:cl/clean	removes generated files
.PHONY: clean cl
clean cl:
	$(RM) $(DEBUG_FILE) $(TARGETS) messages_*


#:h/help	prints this text
.PHONY: help h
help h:
	@sed -n '/^#:/{s//\x1b[1;40;38;5;82mmk /;s/\t/\x1b[m /;p}' Makefile | sort	# ]]	<--- fix for m4
