divert(-1)changequote([,])

__HEADER([Josef Kubin], [2018/07/08], [automaton])
___DESCR([])
___POINT([brackets in grammar])
___USAGE([m4 common.m4 brac_2.m4])

# A ---> (B) | a
# B ---> [C]
# C ---> {D}
# D ---> <A>

define([A], [ifelse([$1], [0], [a], [(B(decr($1)))])])
define([B], [BRAC(C($1))])
define([C], [{D($1)}])
define([D], [<A($1)>])

define([BRAC], [[$@]])

divert(0)dnl
A(3)
