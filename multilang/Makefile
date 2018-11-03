define m4
__HEADER([Josef Kubin], [2018/10/16], [multilang])
___DESCR([all multilanguages strings in frozen file, used as a hash database])
___POINT([generator of multilanguages strings])
___USAGE([make h])
endef

FROZEN_FILE = multilang.m4f
DEBUG_FILE = debug.m4

#EXCLUDE = pl mk lv fr de sk ru
#LANGS = cz sk pl en de fr lv mk ru

#TARGETS += debug

TARGETS += arrays.c
TARGETS += all_in_one.c
TARGETS += separated.c

.SUFFIXES:


#:all	create all targets
.PHONY: all
all: $(TARGETS)


$(FROZEN_FILE): Makefile common.m4 multilang.m4 langs.mc register.mc strings.m4
	m4 -F $@ $(addprefix -DEXCLUDE_, $(EXCLUDE)) $(wordlist 2, $(words $^), $^)

%.c: $(FROZEN_FILE) %_def.m4  %.m4 messages.mc
	m4 -R $^ > $@

%.c: $(FROZEN_FILE) %.m4 messages.mc
	m4 -R $^ > $@


#:dbg/debug	debugging
.PHONY: debug dbg
debug dbg:
	> $(DEBUG_FILE)


#:cl/clean	removes generated files
.PHONY: clean cl
clean cl:
	$(RM) $(DEBUG_FILE) $(FROZEN_FILE) $(TARGETS)


#:h/help	prints this text
.PHONY: help h
help h:
	@sed -n '/^#:/{s//\x1b[1;40;38;5;82mmk /;s/\t/\x1b[m /;p}' Makefile | sort	# ]]	<--- fix for m4
