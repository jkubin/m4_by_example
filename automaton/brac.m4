divert(-1)changequote([,])

__HEADER([Josef Kubin], [2018/07/08], [automaton])
___DESCR([])
___POINT([brackets in grammar])
___USAGE([m4 brac.m4])

# A ---> (B) | a
# B ---> [C]
# C ---> {D}
# D ---> <A>

define([A], [ifelse(COUNTER, [3], [a], [define([COUNTER], incr(COUNTER))(B)])])
define([B], [BRAC(C)])
define([C], [{D}])
define([D], [<A>])

define([BRAC], [[$@]])
define([COUNTER], [0])

divert(0)dnl
A
