__HEADER([Josef Kubin], [2018/10/31], [dictionary])
__THANKS([])
___DESCR([])
___POINT([])
___USAGE([m4 common.m4 dict.m4 dict_xml.m4])

# define counters for divert_index
define([DICT_DIVERT_COUNTER], defn([BETA_COUNT_UP]))

# define indices to diverts
DICT_DIVERT_COUNTER(1)

# β rule
define([DICTIONARY], [dnl

	define([DICT_LETTER], [[letter_$1]])

	ifdef(DICT_LETTER, [], [
		# assign number to queue; note missing parenthesis
		define(letter_$1, DICT_DIVERT_COUNTER)

		# close opened tags later
		pushdef([OPENED_TAG], indir(DICT_LETTER))

divert(indir(DICT_LETTER))dnl
<letter name="$1">
dnl <letter name="ifdef([$1], [indir([$1])], [$1])">
divert(-1)
	])

	# append new record to appropriate queue
	divert(indir(DICT_LETTER))dnl
	<item><word>$2</word><meaning letter="$3">$4</meaning></item>
dnl	<item><word>$2</word><meaning letter="ifdef([$3], [indir([$3])], [$3])">$4</meaning></item>
divert(-1)
])

# A → β
define([CLOSE_OPENED_TAGS], [

	ifdef([OPENED_TAG], [
		divert(OPENED_TAG)dnl
</letter>
divert(-1)
		popdef([OPENED_TAG])

		# recursion
		$0
	])
])

m4wrap([
	CLOSE_OPENED_TAGS

	divert(0)dnl
<?xml version="1.0" encoding="utf-8"?>
<dictionary>
undivert[]dnl
</dictionary>
])
