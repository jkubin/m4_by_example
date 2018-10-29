divert(-1)changequote([,])

__HEADER([Josef Kubin], [2018/07/08], [automaton])
___DESCR([])
___POINT([])
___USAGE([m4 common.m4 angular_brac.m4])

# A ---> RA | CB
# B ---> LB | C
# C ---> test
# L ---> [
# R ---> ]

define([A], [ifelse($1, [0], [C[]B(COUNTER)], [R[]$0(decr($1))])])
define([B], [ifelse($1, [0], [C], [L[]$0(decr($1))])])
define([C], [test])

define([L], [changequote`'format(`%c', 91)changequote([,])])
define([R], [changequote`'format(`%c', 93)changequote([,])])

define([COUNTER], [5])

divert(0)dnl
A(COUNTER)
