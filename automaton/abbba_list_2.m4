__HEADER([Josef Kubin], [2018/05/15], [automaton])
___DESCR([automata for ab*a])
___POINT([automaton for a list; process all symbols in list])
___USAGE([m4 common.m4 abbba_list.m4])

# napsat gramatiku
#                      _b_
#                     |  /
#      ___     a     _V_/   a     _____
# --->/ A \-------->/ B \------->// C \\
#     \___/         \___/        \\___//
#       |                           |
#       |              _a,b_        |
#       |             |    /        |
#      b|         ____V___/      a,b|
#       '------->/ reject \<--------'
#                \________/
#
# accepts
# aa; aba; abba; abbbbbbba; ...

define([A], [
	# node A
	ifelse(
		[$1], [a], [B(shift($@))],
		[$1], [b], [REJECT(shift($@))],
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
		[$1], [a], [REJECT(shift($@))],
		[$1], [b], [REJECT(shift($@))],
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
	ifelse(
		[$1], [a], [$0(shift($@))],
		[$1], [b], [$0(shift($@))],
		[$1], [], [
			divert(0)dnl
reject
m4exit(2)
		],

		[NOT_IN_ALPHABET($@)]
	)
])

m4wrap([
	divert(0)dnl
try to uncomment: [ATM(SYMBOL_LIST)]
m4exit(2)
])

define([ATM], defn([A]))

define([SYMBOL_LIST], [x, a, b, a, b, b, a])

# prints SYMBOL_LIST
divert(0)dnl
[ATM](SYMBOL_LIST)
divert(-1)
ATM(SYMBOL_LIST)
