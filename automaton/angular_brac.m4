divert(-1)changequote([,])

__HEADER([Josef Kubin], [2018/07/08], [automaton])
___DESCR([])
___POINT([])
___USAGE([m4 common.m4 angular_brac.m4])

# A ---> [A | X				dnl]
# X ---> test

define([A], [ifelse(COUNTER, [0], [X], [define([COUNTER], decr(COUNTER))L[]A])])

define([L], [changequote`'format(`%c', 91)changequote([,])])
define([R], [changequote`'format(`%c', 93)changequote([,])])
define([X], [test])

define([COUNTER], [5])

divert(0)dnl
A
