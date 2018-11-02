define m4
__HEADER([Josef Kubin], [2018/05/22], [karel_hruby])
___DESCR([HRUBÝ, Karel. Sbírka přísloví, pořekadal a průpovědí, krerých užívá náš lid rolnický. Praha: J. OTTO. 1880.])
___POINT([playing with an M4 dictionary])
___USAGE([make h])
endef

PROJECT = $(notdir $(PWD))
DEBUG_FILE = debug.m4

#TARGETS = debug

TARGETS += $(PROJECT)_cz.html
TARGETS += $(PROJECT)_cz.xml
TARGETS += $(PROJECT).csv
TARGETS += $(PROJECT).txt

.SUFFIXES:


#:all	create all targets
.PHONY: all
all: $(TARGETS)

# all: $(PROJECT)
$(PROJECT)_cz.%: common.m4 karel_hruby.m4 lang_cz.m4 %.m4 $(PROJECT).mc
	m4 $^ > $@

$(PROJECT).%: %.m4 $(PROJECT).mc
	m4 $^ > $@

$(PROJECT).txt: common.m4 karel_hruby.m4 heredoc.m4 karel_hruby.mc
	m4 $^ > $@


#:files	copy macros to files
.PHONY: files
files: echo.m4 $(PROJECT).mc
	m4 $^


#:dup	test for duplicit records
.PHONY: dup
dup: duplic.m4 $(PROJECT).mc
	m4 $^


#:dbg/debug	debugging
.PHONY: debug dbg
debug dbg:
	> $(DEBUG_FILE)


#:cl/clean	removes generated files
.PHONY: clean cl
clean cl:
	$(RM) $(DEBUG_FILE) $(TARGETS) *.scn


#:h/help	prints this text
.PHONY: help h
help h:
	@sed -n '/^#:/{s//\x1b[1;40;38;5;82mmk /;s/\t/\x1b[m /;p}' Makefile | sort	# ]]	<--- fix for m4
