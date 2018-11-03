divert(-1)changequote([,])

__HEADER([Josef Kubin], [2018/07/09], [counter])
___DESCR([])
___POINT([])
___USAGE([m4 counter.m4])

define([COUNTER], [<num>$1</num> $0(incr($1))])

divert(0)dnl
COUNTER(0)
