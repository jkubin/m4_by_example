divert(-1)changequote([,])

__HEADER([Josef Kubin], [2018/05/10], [branching])
___DESCR([])
___POINT([macro from command line; example of defn])
___USAGE([m4 -DBRANCH=CASE_$[$RANDOM & 0xf] defn.m4])

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

divert(0)dnl
dumpdef([BRANCH])dnl
[BRANCH] ---> defn([BRANCH]) ---> BRANCH
[BRANCH] ---> BRANCH
