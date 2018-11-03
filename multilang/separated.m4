__HEADER([Josef Kubin], [2018/10/19], [multilang])
___DESCR([])
___POINT([])
___USAGE([m4 -R multilang.m4f separated_def.m4 separated.m4 messages.mc > separated.c])

# A → β
define([LANG_LOOP], [

	ifelse([$1], [], [], [

		divert(MULTILANG_BLOCK)dnl
"ARG2($1)",	// MAX_LENGTH
divert(-1)
		# recursion
		$0(shift($@))
	])
])

# β rule
define([BETA_MESSAGE], [

	# test if a message exists
	ifdef([$0_$1], [], [
		G_ERROR([the item ‘$0($1)’ is not in library])
	])

	define([MULTILANG_BLOCK], $0_MSG)
	define([MAX_LENGTH], $0_LEN)

	divert(MULTILANG_BLOCK)dnl
{
$0_RULER
divert(-1)
	LANG_LOOP(LAST($0_$1))
	divert(MULTILANG_BLOCK)dnl
},
divert(-1)
])

# A → β
define([ERROR],		defn([BETA_MESSAGE]))
define([WARNING],	defn([BETA_MESSAGE]))
define([INFO],		defn([BETA_MESSAGE]))

m4wrap([
	divert(0)dnl
/*
 * DO_NOT_EDIT
 */

char ERROR_IDENT[[]]BRAC(incr(ERROR_LEN)) = {
undivert(ERROR_MSG)dnl
};

char INFO_IDENT[[]]BRAC(incr(INFO_LEN)) = {
undivert(INFO_MSG)dnl
};

char WARNING_IDENT[[]]BRAC(incr(WARNING_LEN)) = {
undivert(WARNING_MSG)dnl
};
])
