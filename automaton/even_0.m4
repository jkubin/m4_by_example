__HEADER([Josef Kubin], [2018/10/18], [automaton])
___DESCR([automaton accepts even number of 0])
___POINT([how to build automaton in M4])
___USAGE([m4 common.m4 even_0.m4])

#          _1__           _1__
#         |   /          |   /
#      ___V__/    0     _V__/
# --->// S1 \\-------->/ S2 \
#     \\____//<--------\____/
#                 0

# β rule
define([S1], [
	ifelse(
		[$*], [0], [define([$0], defn([S2]))],
		[$*], [1], [],
		[NOT_IN_ALPHABET($@)]
	)
])

# β rule
define([S2], [
	ifelse(
		[$*], [0], [define([$0], defn([S1]))],
		[$*], [1], [],
		[NOT_IN_ALPHABET($@)]
	)
])

# A → β
define([EVEN], defn([S1]))

m4wrap([
	divert(0)dnl
ifelse(defn([EVEN]), defn([S1]), [accept], [reject])
])

EVEN(0)
EVEN(1)
EVEN(0)
EVEN(1)
