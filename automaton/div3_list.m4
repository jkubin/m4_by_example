__HEADER([Josef Kubin], [2018/05/15], [automaton])
___DESCR([accepts binary numbers divisible by three])
___POINT([automaton for a list])
___POINT([note defn inside of m4wrap (DRY - Do not Repeat Yourself)])
___POINT([note $[]0 inside of REJECT])
___USAGE([m4 common.m4 div3_list.m4])

#                     _0_                          _1_
#                    |  /                         |  /
#   ___  epsilon    _V_/     1     ___     0     _V_/
#  / S \--------->// A \\-------->/ B \-------->/ C \
#  \___/          \\___//<--------\___/<--------\___/
#                            1             0
#
# accepts
# 0, 11, 110, 1001, 1100, 1111, 10010, 10101, 11000, 11011, ...
#define([CSV], [1, 1, 1, 0, 1, 1, 0, 0, 0, 1])
define([CSV], [1, 1, 0, 1, 0, 0, 1])

define([S], [
	# prints the CSV
	divert(0)dnl
[$0($*)]
divert(-1)

	ifelse(
		[$1], [0], [A($@)],
		[$1], [1], [A($@)],
		[NOT_IN_ALPHABET($@)]
	)
])

define([A], [
	# node A
	ifelse(
		[$1], [0], [$0(shift($@))],
		[$1], [1], [B(shift($@))],
		[$*], [], [ACCEPT],
		[NOT_IN_ALPHABET($@)]
	)
])
define([B], [
	# node B
	ifelse(
		[$1], [0], [C(shift($@))],
		[$1], [1], [A(shift($@))],
		[$*], [],  [REJECT],
		[NOT_IN_ALPHABET($@)]
	)
])

define([C], [
	# node C
	ifelse(
		[$1], [0], [B(shift($@))],
		[$1], [1], [$0(shift($@))],
		[$*], [],  [REJECT],
		[NOT_IN_ALPHABET($@)]
	)
])

define([NOT_IN_ALPHABET], [
	errprint(__file__:__line__[: error: symbol ‘$*’ is not in alphabet
])
	m4exit(1)
])

define([ACCEPT], [
	divert(0)dnl
accept
m4exit(0)
])

define([REJECT], [
	divert(0)dnl
ifdef([$0], [reject], [try to uncomment: [DIV_BY_THREE(CSV)]])
m4exit(2)
])

m4wrap(defn([REJECT]))

define([DIV_BY_THREE], defn([S]))

# try to comment out the following line
DIV_BY_THREE(CSV)[]dnl	<--- try to comment out
