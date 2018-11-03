divert(-1)changequote([,])

__HEADER([Josef Kubin], [2018/05/10], [branching])
___DESCR([])
___POINT([concatenation two terminal symbols to create a non-terminal symbol])
___USAGE([m4 -DBRANCH=$[$RANDOM & 0xf] branching.m4])

define([B_0], [zero])
define([B_1], [one])
define([B_2], [two])
define([B_3], [three])
define([B_4], [four])
define([B_5], [five])
define([B_6], [six])
define([B_7], [seven])
define([B_8], [eight])
define([B_9], [nine])

# define([B], [B_$1])
# or
define([B], [$0_$1])

divert(0)dnl
B_[]BRANCH	<--- no expansion
[B](BRANCH)
B(BRANCH)
