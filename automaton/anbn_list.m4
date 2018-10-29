__HEADER([Josef Kubin], [2018/05/15], [automaton])
___DESCR([a PDA for {a^n b^n: n >= 0}])
___POINT([macro as a stack; macro ACCEPT as an alias to macro C])
___USAGE([m4 common.m4 anbn_list.m4])

# Context-free Grammar, CFG
# S ---> aSB | epsilon
# B ---> b
#                          ___a,eps--->a     ___b,a--->eps
#                          |  /              |  /
#     _____ eps,eps--->$  _V_/  b,a--->eps  _V_/   eps,$--->eps  _____
# -->// D \\------------>/ A \------------>/ B \--------------->// C \\
#    \\___//             \___/             \___/                \\___//
#
# accepts
# [], ab, aabb, aaabbb, aaaabbbb, ...

define([SYMBOL_LIST], [a, a, a, b, b, b])

# β rule
define([A], [
	# node A
	ifelse(
		[$1], [a], [pushdef([.])$0(shift($@))],
		[$1], [b], [B($@)],
		[$*], [],  [REJECT],

		[NOT_IN_ALPHABET($@)]
	)
])

# β rule
define([B], [
	# node B
	ifelse(
		[$1], [a], [REJECT],
		[$1], [b], [ifdef([.], [popdef([.])$0(shift($@))], [REJECT])],
		[$*], [],  [ifdef([.], [REJECT], [C])],

		[NOT_IN_ALPHABET($@)]
	)
])

# β rule
define([C], [
	# node C
	divert(0)dnl
accept
divert(-1)
])

# β rule
define([D], [
	# node D
	ifelse(
		[$1], [a], [A($@)],
		[$1], [b], [REJECT],
		[$*], [],  [ACCEPT],

		[NOT_IN_ALPHABET($@)]
	)
])

# A → β
define([ACCEPT], defn([C]))

define([REJECT], [
	divert(0)dnl
reject
divert(-1)
])

define([PDA], defn([D]))

divert(0)dnl
[PDA](SYMBOL_LIST)
divert(-1)
PDA(SYMBOL_LIST)
