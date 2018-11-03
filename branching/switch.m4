divert(-1)changequote([,])

__HEADER([Josef Kubin], [2018/05/10], [branching])
___DESCR([switch(x) { case '0': zero; ...; default: x; } in M4])
___POINT([how to branch in M4])
___USAGE([m4 -DVALUE=$[$RANDOM & 0xf] switch.m4])

define([CASE_0], [zero])
define([CASE_1], [one])
define([CASE_2], [two])
define([CASE_3], [three])
define([CASE_4], [four])
define([CASE_5], [five])
define([CASE_6], [six])
define([CASE_7], [seven])
define([CASE_8], [eight])
define([CASE_9], [nine])
define([CASE_10], [ten])

define([SWITCH], [ifdef([CASE_$1], [CASE_$1], [default: $1])])

divert(0)dnl
[SWITCH](VALUE)
SWITCH(VALUE)
