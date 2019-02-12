divert(-1)changequote([,])

__HEADER([Josef Kubin], [2018/11/03], [counter])
___DESCR([])
___POINT([])
___USAGE([m4 demo.m4])

define([COUNT_UP], [
	define([$0_COUNTER], $1)
	define([$0], [$0_COUNTER[]define([$0_COUNTER], incr($0_COUNTER))])
])

define([COUNT_DOWN], [
	define([$0_COUNTER], $1)
	define([$0], [$0_COUNTER[]define([$0_COUNTER], decr($0_COUNTER))])
])

# define counters
define([A], defn([COUNT_DOWN]))
define([B], defn([COUNT_UP]))
define([C], defn([COUNT_DOWN]))
define([D], defn([COUNT_UP]))

# init counters
A(3)
B(-3)
C(0)
D(2147483645)

divert(0)dnl
A
B
A
B
C
C
C
D
D
D
D
