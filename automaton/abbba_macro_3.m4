__HEADER([Josef Kubin], [2018/05/16], [automaton])
___DESCR([state machine ab*a])
___POINT([state machine by macros])
___USAGE([m4 common.m4 macro_dfa.m4])

# napsat gramatiku
#                     __b_
#                     |  /
#      ___     a     _V_/   a     _____
# --->/ A \-------->/ B \------->// C \\
#     \___/         \___/        \\___//
#       |                           |
#       |             __a,b_        |
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
		[$1], [a], [define([$0], defn([B]))],
		[$1], [b], [define([$0], defn([REJECT]))],
		[NOT_IN_ALPHABET($@)]
	)
])

define([B], [
	# node B
	ifelse(
		[$1], [a], [define([$0], defn([C]))],
		[$1], [b], [],
		[NOT_IN_ALPHABET($@)]
	)
])

define([C], [
	# node C
	ifelse(
		[$1], [a], [define([$0], defn([REJECT]))],
		[$1], [b], [define([$0], defn([REJECT]))],
		[NOT_IN_ALPHABET($@)]
	)
])

define([REJECT], [
	# node REJECT
	ifelse(
		[$1], [a], [],
		[$1], [b], [],
		[NOT_IN_ALPHABET($@)]
	)
])

# A → β
define([ATM], defn([A]))

m4wrap([
	divert(0)dnl
ifelse(
	defn([ATM]), defn([C]), [accept],
	[reject])
])

ATM([a])
#ATM([b])
ATM([b])
#ATM([b])
ATM([a])
