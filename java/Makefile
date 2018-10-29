define m4
__HEADER([Josef Kubin], [2018/10/27], [java])
___DESCR([generator java source code])
___POINT([comparison two source code generators: XSLT versus M4])
___USAGE([make h])
endef

TARGETS += Address_XSLT.java
TARGETS += Address_M4_1.java
TARGETS += Address_M4_2.java
TARGETS += dependent.java

.SUFFIXES:


#:all	create all targets
.PHONY: all
all: $(TARGETS)

Address_XSLT.java: dependentObject.xslt AddressDO.xml
	xsltproc $^ > $@

Address_M4%.java: dependentObject%.m4 AddressDO.mc
	m4 $^ > $@

dependent.java: java_def.m4 dependentObject_3.m4 java_src.mc
	m4 $^ > $@


#:cl/clean	removes generated files
.PHONY: clean cl
clean cl:
	$(RM) *.java


#:h/help	prints this text
.PHONY: help h
help h:
	@sed -n '/^#:/{s//\x1b[1;40;38;5;82mmk /;s/\t/\x1b[m /;p}' Makefile | sort	# ]]	<--- fix for m4
