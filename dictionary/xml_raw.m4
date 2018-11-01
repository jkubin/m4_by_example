<?xml version="1.0" encoding="utf-8"?>
<dictionary>
divert(-1)changequote([,])

__HEADER([Josef Kubin], [2018/10/31], [dictionary])
___DESCR([a simple xml generator])
___POINT([simplicity])
___USAGE([m4 xml_raw.m4 ...mc])

# β rule
define([DICTIONARY], [dnl
	divert(0)dnl
<item>[<source letter="$1">$2</source><meaning letter="$3">$4</meaning>]dnl
ifelse([$5], [], [], [<flags>[$5]</flags>])</item>
divert(-1)
])

m4wrap([
	divert(0)dnl
</dictionary>
])
