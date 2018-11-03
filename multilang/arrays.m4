__HEADER([Josef Kubin], [2018/10/16], [multilang])
___DESCR([])
___POINT([])
___USAGE([m4 -R multilang.m4f array_def.m4 arrays.m4 messages.mc > arrays.c])

# A → β
define([ITEM_NODE_LANG_LOOP], [

	ifelse([$1], [], [], [
		# construct string to expand later
		define([STRING_LANG], MESSAGE_[]ARG1($1))

		divert(STRING_LANG)\n"
"ARG2($1)[]dnl
divert(-1)
		# recursion
		$0(shift($@))
	])
])

# β rule
define([BETA_ITEM], [

	define([MESSAGE_], $0_)

	# test if a message exists in the frozen file
	ifdef([$0_$1], [], [
		G_ERROR([the item ‘$0($1)’ is not in library])
	])

	ITEM_NODE_LANG_LOOP(LAST($0_$1))dnl
])

# A → β
define([INIT_NODE_LANG_LOOP], [

	ifelse([$1], [], [], [
		define([LANG_CODE], ARG1($1))

		# create string ERROR_cz ...,  WARNING_cz ...,  QUERY_cz ...
		define([STRING_LANG], MESSAGE_[]LANG_CODE)

		# assign buffer number to ERROR_cz ...,  WARNING_cz ...,  QUERY_cz ...
		# note missing parenthesis
		define(STRING_LANG, LANG_BUFFER)

		define([STRING_NAME], _[]MESSAGE_IDENT[_]LANG_CODE)

		# remember each "OPENED_ARRAY" to close it later
		pushdef([OPENED_ARRAY], STRING_LANG)

		divert(STRING_LANG)dnl
static const char STRING_NAME[[]] =
"ARG2($1)[]dnl
divert(MESSAGE_BUFFER)dnl
	STRING_NAME,
divert(-1)
		# recursion
		$0(shift($@))
	])
])

# β rule
define([BETA_INIT], [

	# create ERROR_ or WARNING_ or QUERY_
	define([MESSAGE_], $0_)
	define([MESSAGE_IDENT], $0_IDENT)
	define([MESSAGE_BUFFER], MSG_BUFFER)

	divert(MESSAGE_BUFFER)dnl
const char *MESSAGE_IDENT[[]] = {
divert(-1)

	# test if a message exists in frozen file
	ifdef([$0_$1], [], [
		G_ERROR([the item ‘$0($1)’ is not in library])
	])

	INIT_NODE_LANG_LOOP(LAST($0_$1))dnl

divert(MESSAGE_BUFFER)dnl
};

divert(-1)

	# transition to item rule
	define([$0], defn([BETA_ITEM]))
])

# A → β
define([CLOSE_OPENED_STRINGS], [

	ifdef([OPENED_ARRAY], [
		divert(OPENED_ARRAY)dnl
";

divert(-1)
		popdef([OPENED_ARRAY])

		# recursion
		$0
	])
])

m4wrap([
	CLOSE_OPENED_STRINGS

	divert(0)dnl
/*
 * DO_NOT_EDIT
 */
])

# A → β
define([ERROR],		defn([BETA_INIT]))
define([WARNING],	defn([BETA_INIT]))
define([INFO],		defn([BETA_INIT]))
