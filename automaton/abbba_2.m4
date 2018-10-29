divert(-1)changequote([,])

__HEADER([Josef Kubin], [2018/07/08], [automaton])
___DESCR([])
___POINT([])
___USAGE([m4 common.m4 abbba.m4])

# A ---> aB
# B ---> bB | a

define([A], [a[]B($1)])
define([B], [ifelse([$1], [0], [a], [b[]B(decr($1))])])

divert(0)dnl
A(2)
