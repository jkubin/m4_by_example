divert(-1)changequote([,])

__HEADER([Josef Kubin], [2018/07/08], [automaton])
___DESCR([])
___POINT([])
___USAGE([m4 common.m4 abbba.m4])

# A ---> aB
# B ---> bB | a

define([A], [a[]B])
define([B], [ifelse(COUNTER, [2], [a], [b[]define([COUNTER], incr(COUNTER))B])])

define([COUNTER], [0])

divert(0)dnl
A
