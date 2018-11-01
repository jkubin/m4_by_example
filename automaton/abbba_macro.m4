divert(-1)changequote([,])

__HEADER([Josef Kubin], [2018/05/16], [automaton])
___DESCR([a DFA for ab*a])
___POINT([state machine by macros; reject wrong word ASAP])
___USAGE([m4 abbba_macro.m4])

#                      _b_
#                     |  /
#      ___     a     _V_/   a     _____
# --->/ A \-------->/ B \------->// C \\
#     \___/         \___/        \\___//
#       |                           |
#      b|         ________       a,b|
#       '------->/ reject \<--------'
#                \________/
#
# accepts
# aa; aba; abba; abbbbbbba; ...

define([A], [
	ifelse(
		[$1], [a], [define([$0], defn([B]))],
		[REJECT($1)]
	)
])

define([B], [
	ifelse(
		[$1], [a], [define([$0], defn([REJECT]))],
		[$1], [b], [],
		[REJECT($1)]
	)
])

define([REJECT], [
	errprint(__file__:__line__[: reject: $1
])
	m4exit(1)
])

define([ATM], defn([A]))

m4wrap([
	divert(0)dnl
accept
])

ATM([a])
ATM([b])
ATM([b])
ATM([b])
ATM([b])
ATM([a])
