__HEADER([Josef Kubin], [2018/05/15], [automaton])
___DESCR([automata for ab*a])
___POINT([automaton for a list; reject wrong word ASAP])
___USAGE([m4 common.m4 abbba_list.m4])

# A ---> aB
# B ---> bB | a
#                      _b_
#                     |  /
#      ___     a     _V_/   a     _____
# --->/ A \-------->/ B \------->// C \\
#     \___/         \___/        \\___//
#       |                           |
#      b|         ________       a,b|
#       +------->/ reject \<--------+
#                \________/
# accepts
# aa; aba; abba; abbbbbbba; ...
#
define([SYMBOL_LIST], [a, b, b, b, a])

define([A], [
	# node A
	ifelse(
		[$1], [a], [B(shift($@))],
		[$1], [b], [REJECT],
		[NOT_IN_ALPHABET($@)]
	)
])

define([B], [
	# node B
	ifelse(
		[$1], [a], [C(shift($@))],
		[$1], [b], [$0(shift($@))],
		[$*], [],  [REJECT],
		[NOT_IN_ALPHABET($@)]
	)
])

define([C], [
	# node C
	ifelse(
		[$1], [a], [REJECT],
		[$1], [b], [REJECT],
		[$*], [],  [ACCEPT],
		[NOT_IN_ALPHABET($@)]
	)
])

define([ACCEPT], [
	divert(0)dnl
accept
m4exit(0)
])

define([REJECT], [
	divert(0)dnl
ifdef([$0], [reject], [try to uncomment: [ATM(SYMBOL_LIST)]])
m4exit(2)
])

m4wrap(defn([REJECT]))

define([ATM], defn([A]))

# prints SYMBOL_LIST
divert(0)dnl
[ATM](SYMBOL_LIST)
divert(-1)
ATM(SYMBOL_LIST)
