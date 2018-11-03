__HEADER([Josef Kubin], [2018/10/19], [multilang])
___DESCR([])
___POINT([])
___USAGE([m4 -R multilang.m4f all_in_one.m4 messages.mc > all_in_one.c])

# length of ruler
define([MAX_LEN], [30])

# redefine RULER to fixed string
define([RULER], /*RULER(MAX_LEN)*/)

# A → β
define([LANG_LOOP], [

	ifelse([$1], [], [], [
		divert(0)dnl
 "ARG2($1)",
divert(-1)
		# recursion
		$0(shift($@))
	])
])

define([BETA_MESSAGE], [

	# test if message exists in frozen file
	ifdef([$0_$1], [], [
		G_ERROR([the item ‘$0($1)’ is not in library])
	])

	divert(0)dnl
{
RULER
divert(-1)
	LANG_LOOP(LAST($0_$1))
	divert(0)dnl
},
divert(-1)
])

# A → β
define([ERROR],		defn([BETA_MESSAGE]))
define([WARNING],	defn([BETA_MESSAGE]))
define([INFO],		defn([BETA_MESSAGE]))

divert(0)dnl
/*
 * DO_NOT_EDIT
 */
char all_in_one[[]]BRAC(incr(MAX_LEN)) = {
divert(1)dnl
};
divert(-1)
