__HEADER([Josef Kubin], [2018/05/17], [messages])
___DESCR([all in one string])
___POINT([a state machine for double quotation marks])
___USAGE([m4 common.m4 c1.m4 messages.mc > c1.c])

#                                  ___E,Q,W___
#                                 |          /
#      ____________    E,Q,W     _V_________/
# --->/ FIRST_LINE \----------->/ NEXT_LINE \
#     \____________/            \___________/
#

# β rule
define([FIRST_LINE], [
	divert(0)[$2]divert(-1)

	# after first record redefine macros
	define([ERROR],		defn([NEXT_LINE]))
	define([QUERY],		defn([NEXT_LINE]))
	define([WARNING],	defn([NEXT_LINE]))
])

# β rule
define([NEXT_LINE], [
	divert(0)\n"
"[$2]divert(-1)
])

# A → β
define([ERROR], defn([FIRST_LINE]))
define([QUERY], defn([FIRST_LINE]))
define([WARNING], defn([FIRST_LINE]))

divert(0)dnl
/*
 * DO_NOT_EDIT
 */
const char all_in_one_string[[]] =
"divert(1)";
divert(-1)
