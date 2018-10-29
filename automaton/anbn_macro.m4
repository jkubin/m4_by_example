divert(-1)changequote([,])

__HEADER([Josef Kubin], [2018/05/17], [automaton])
___DESCR([a PDA for {a^n b^n: n >= 0}])
___POINT([push down automata])
___USAGE([m4 common.m4 anbn_macro.m4])

# Context-free Grammar, CFG
# A ---> aAB | epsilon
# B ---> b
#                          ___a,eps--->a     ___b,a--->eps
#                          |  /              |  /
#     _____ eps,eps--->$  _V_/  b,a--->eps  _V_/   eps,$--->eps  _____
# -->// D \\------------>/ A \------------>/ B \--------------->// C \\
#    \\___//             \___/             \___/                \\___//
#
# accepts
# [], ab, aabb, aaabbb, aaaabbbb, ...

define([D], [
	# node D
	ifelse(
		[$*], [a], [define([$0], defn([A]))],
		[$*], [b], [define([$0], defn([REJECT]))],
		[$*], [],  [define([$0], defn([ACCEPT]))],

		[NOT_IN_ALPHABET($@)]
	)
])

define([NODE0], [
	ifelse([$1], [a],
	[pushdef([(a)])],
	[$1], [b],
	[ifdef([(a)], [NODE1($1)define([$0], defn([NODE1]))], [REJECT($1)])],
	[REJECT($1)])
])

define([NODE1], [
	ifelse([$1], [b],
	[ifdef([(a)], [popdef([(a)])], [REJECT($1)])],
	[REJECT($1)])
])

# udelat dve verze automatu, prvni skonci, jakmile dosahne ACCEPT nebo REJECT
# druha verze docte vsechna makra a pak vyhodnoti
#
# define([REJECT], [
# 	errprint([reject
# ])
# 	m4exit(1)
# ])

define([ACCEPT], [
	# node ACCEPT
	ifelse(
		[$*], [a], [define([$0], defn([REJECT]))],
		[$*], [b], [define([$0], defn([REJECT]))],
		[$*], [],  [define([$0], defn([REJECT]))],

		[NOT_IN_ALPHABET($@)]
	)
])

define([REJECT], [
	# node REJECT
	ifelse(
		[$*], [a], [],
		[$*], [b], [],
		[$*], [], [],

		[NOT_IN_ALPHABET($@)]
	)
])

# define([REJECT], [
# 	errprint(__file__:__line__[: reject: $1
# ])
# 	m4exit(1)
# ])

define([PDA], defn([D]))

m4wrap([
	divert(0)
ifelse(
	defn([NOT_DIV_BY_THREE]), defn([C]), [accept],
	defn([NOT_DIV_BY_THREE]), defn([D]), [accept],
	[reject])
])

PDA([a])
PDA([a])
PDA([a])
PDA([b])
PDA([b])
PDA([b])
