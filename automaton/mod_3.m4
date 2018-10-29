__HEADER([Josef Kubin], [2018/06/28], [automaton])
___DESCR([the automaton modulo three shows the remainder of the number of arbitrary length])
___POINT([how to construct an automaton])
___USAGE([m4 common.m4 mod_3.m4])

# $ while :; do echo 'MOD_THREE('$[$RANDOM % 10]')' >> number.mc; done
# $ m4 common.m4 mod_3.m4 number.mc

#                   ___0,3,6,9       ___0,3,6,9       ___0,3,6,9
#                  |   /            |   /            |   /
#   ___   eps   ___V__/   1,4,7   __V__/   1,4,7   __V__/
#  / S \------>/ ZERO \--------->/ ONE \--------->/ TWO \
#  \___/       \______/<---------\_____/<---------\_____/
#                 ^ |     2,5,8            2,5,8    ^ |
#                 | |             2,5,8             | |
#                 | '-------------------------------' |
#                 |               1,4,7               |
#                 '-----------------------------------'

# β rule
define([S], [
	# node S

	# test 0-9
	ifelse(patsubst([[$1]], [[0-9]]), [], [], [
		NOT_IN_ALPHABET($@)
	])
              eps
	# S -------> ZERO
	define([$0], defn([ZERO]))

	# ZERO ----> ZERO | ONE | TWO
	$0($@)
])

# β rule
define([PRINT], [
	divert(0)dnl
$1[]divert(-1)
])

# β rule
define([ZERO], defn([PRINT])[
	# node ZERO
	ifelse(
		[$*], [0], [],
		[$*], [3], [],
		[$*], [6], [],
		[$*], [9], [],

		[$*], [1], [define([$0], defn([ONE]))],
		[$*], [4], [define([$0], defn([ONE]))],
		[$*], [7], [define([$0], defn([ONE]))],

		[$*], [2], [define([$0], defn([TWO]))],
		[$*], [5], [define([$0], defn([TWO]))],
		[$*], [8], [define([$0], defn([TWO]))],

		[NOT_IN_ALPHABET($@)]
	)
])

# β rule
define([ONE], defn([PRINT])[
	# node ONE
	ifelse(
		[$*], [0], [],
		[$*], [3], [],
		[$*], [6], [],
		[$*], [9], [],

		[$*], [1], [define([$0], defn([TWO]))],
		[$*], [4], [define([$0], defn([TWO]))],
		[$*], [7], [define([$0], defn([TWO]))],

		[$*], [2], [define([$0], defn([ZERO]))],
		[$*], [5], [define([$0], defn([ZERO]))],
		[$*], [8], [define([$0], defn([ZERO]))],

		[NOT_IN_ALPHABET($@)]
	)
])

# β rule
define([TWO], defn([PRINT])[
	# node TWO
	ifelse(
		[$*], [0], [],
		[$*], [3], [],
		[$*], [6], [],
		[$*], [9], [],

		[$*], [1], [define([$0], defn([ZERO]))],
		[$*], [4], [define([$0], defn([ZERO]))],
		[$*], [7], [define([$0], defn([ZERO]))],

		[$*], [2], [define([$0], defn([ONE]))],
		[$*], [5], [define([$0], defn([ONE]))],
		[$*], [8], [define([$0], defn([ONE]))],

		[NOT_IN_ALPHABET($@)]
	)
])

# A → β
define([MOD_THREE], defn([S]))

m4wrap([
	divert(0)dnl
ifelse(
	defn([MOD_THREE]), defn([S]), [no input, example of usage: [MOD_THREE(3)]],
	defn([MOD_THREE]), defn([ZERO]), [ % 3 = 0],
	defn([MOD_THREE]), defn([ONE]),  [ % 3 = 1],
	defn([MOD_THREE]), defn([TWO]),  [ % 3 = 2],
)
])

MOD_THREE(3)
MOD_THREE(2)
