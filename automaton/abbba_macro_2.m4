__HEADER([Josef Kubin], [2018/05/16], [automaton])
___DESCR([state machine accepts ab*a])
___POINT([state machine by macros])
___USAGE([m4 common.m4 abbba_macro_2.m4])

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
		[$*], [a], [define([$0], defn([B]))],
		[$*], [b], [define([$0], defn([REJECT]))],
		[NOT_IN_ALPHABET($@)]
	)
])

define([B], [
	# node B
	ifelse(
		[$*], [a], [define([$0], defn([C]))],
		[$*], [b], [],
		[NOT_IN_ALPHABET($@)]
	)
])

define([C], [
	# node C
	ifelse(
		[$*], [a], [define([$0], defn([REJECT]))],
		[$*], [b], [define([$0], defn([REJECT]))],
		[NOT_IN_ALPHABET($@)]
	)
])

define([REJECT], [
	# node REJECT
	ifelse(
		[$*], [a], [],
		[$*], [b], [],
		[NOT_IN_ALPHABET($@)]
	)
])

# A → β
define([ATM], defn([A]))

m4wrap([
	divert(0)dnl
ifelse(defn([ATM]), defn([C]), [accept], [reject])
])

ATM([a])
#ATM([b])
ATM([b])
#ATM([b])
ATM([a])
