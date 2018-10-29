divert(-1)changequote([,])

__HEADER([Josef Kubin], [2018/05/17], [automaton])
___DESCR([])
___POINT([start node to detect automaton inactivity])
___POINT([gluing macros from parts (defn), see macro PRINT])
___USAGE([m4 common.m4 div3_macro.m4])

#                   __0_                         __1_
#                   |  /                         |  /
#  ___  epsilon    _V_/     1     ___     0     _V_/
# / S \--------->// A \\-------->/ B \-------->/ C \
# \___/          \\___//<--------\___/<--------\___/
#                           1             0
#
# accepts
# 0, 11, 110, 1001, 1100, 1111, 10010, 10101, 11000, 11011, ...

define([PRINT], [
	divert(0)dnl
$1[]divert(-1)
])

define([S], [
	# node S
	divert(0)dnl
0b[]divert(-1)
	define([$0], defn([A]))
	$0($@)
])

define([A], defn([PRINT])[
	# node A
	ifelse(
		[$*], [0], [],
		[$*], [1], [define([$0], defn([B]))],
		[NOT_IN_ALPHABET($@)]
	)
])

define([B], defn([PRINT])[
	# node B
	ifelse(
		[$*], [0], [define([$0], defn([C]))],
		[$*], [1], [define([$0], defn([A]))],
		[NOT_IN_ALPHABET($@)]
	)
])

define([C], defn([PRINT])[
	# node C
	ifelse(
		[$*], [0], [define([$0], defn([B]))],
		[$*], [1], [],
		[NOT_IN_ALPHABET($@)]
	)
])

define([NOT_IN_ALPHABET], [
	errprint(__file__:__line__[: error: symbol ‘$*’ is not in alphabet
])
	m4exit(1)
])

define([BIT_DIV_BY_THREE], defn([S]))

m4wrap([
	divert(0)
ifelse(
	defn([BIT_DIV_BY_THREE]), defn([S]), [the macro [BIT_DIV_BY_THREE([0])] never expanded],
	defn([BIT_DIV_BY_THREE]), defn([A]), [accept],
	[reject])
])

################################################################################

BIT_DIV_BY_THREE([1])
BIT_DIV_BY_THREE([0])
BIT_DIV_BY_THREE([0])
BIT_DIV_BY_THREE([1])
BIT_DIV_BY_THREE([1])
BIT_DIV_BY_THREE([0])
BIT_DIV_BY_THREE([1])
BIT_DIV_BY_THREE([0])
BIT_DIV_BY_THREE([1])
BIT_DIV_BY_THREE([1])
BIT_DIV_BY_THREE([1])
BIT_DIV_BY_THREE([1])
BIT_DIV_BY_THREE([1])
BIT_DIV_BY_THREE([1])
BIT_DIV_BY_THREE([1])
BIT_DIV_BY_THREE([1])
BIT_DIV_BY_THREE([1])
