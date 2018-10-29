divert(-1)changequote([,])

__HEADER([Josef Kubin], [2018/07/08], [automaton])
___DESCR([L = {a^n b^n: n >= 0}])
___POINT([])
___USAGE([m4 common.m4 anbn.m4])

# Context-free Grammar, CFG
#
# A ---> aAb | epsilon

define([A], [ifelse(
		COUNTER, [5], [],
		[define([COUNTER], incr(COUNTER))a[]A[]b])])

define([COUNTER], [0])

divert(0)dnl
A
