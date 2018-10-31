__HEADER([Josef Kubin], [2018/10/24], [dictionary])
___DESCR([])
___POINT([])
___USAGE([m4 array.m4])

# β rule
define([KEY_NAME_VALUE_NAME], [
	define([KEY_NAME], _key_[]ifdef([$1], [indir([$1])], [$1]))
	define([VALUE_NAME], _value_[]ifdef([$1], [indir([$1])], [$1])[])
])

# the new key letter in the dictionary has been found, it creates a new key-value set in the C array
# A → β
define([ADD_NEW_RECORD], defn([KEY_NAME_VALUE_NAME])[

	# note (intentionally) missing parenthesis
	define(KEY_NAME, BUFFER_FOR_KEY)
	define(VALUE_NAME, BUFFER_FOR_VAL)

	# close it later
	pushdef([OPENED_ARRAY], KEY_NAME)
	pushdef([OPENED_ARRAY], VALUE_NAME)

	divert(KEY_NAME)
static char defn([KEY_NAME])[[]] =
"$2[]dnl
divert(VALUE_NAME)
static char defn([VALUE_NAME])[[]] =
"$4[]dnl
divert(KEY_ARRAY_OF_LETTERS)dnl
"$1[]dnl
divert(KEY_ARRAY_OF_POINTERS)dnl
defn([KEY_NAME]),
divert(VAL_ARRAY_OF_POINTERS)dnl
defn([VALUE_NAME]),
divert(-1)
])

# β rule
define([DICTIONARY], [
	define([KEY_ARRAY_OF_LETTERS], BUFFER_FOR_PTR)
	define([KEY_ARRAY_OF_POINTERS], BUFFER_FOR_PTR)
	define([VAL_ARRAY_OF_POINTERS], BUFFER_FOR_PTR)

	# close it later
	pushdef([OPENED_ARRAY], KEY_ARRAY_OF_LETTERS)

divert(KEY_ARRAY_OF_POINTERS)
const char *key_alphabet[[]] = {
divert(VAL_ARRAY_OF_POINTERS)
const char *value_alphabet[[]] = {
divert(KEY_ARRAY_OF_LETTERS)
const char key_index[[]] =
divert(-1)

	ADD_NEW_RECORD($@)

	# transition to next node
	define([$0], defn([BETA_ITEM]))
])

# β rule
define([BETA_ITEM], defn([KEY_NAME_VALUE_NAME])[

	ifdef(defn([KEY_NAME]), [
		divert(KEY_NAME)\n"
"$2[]dnl
divert(VALUE_NAME)\n"
"$4[]dnl
divert(-1)
	], [
		divert(KEY_ARRAY_OF_LETTERS)\n"
divert(-1)
		ADD_NEW_RECORD($@)
	])
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

# close opened arrays of pointers
divert(KEY_ARRAY_OF_POINTERS)dnl
};
divert(VAL_ARRAY_OF_POINTERS)dnl
};
divert(0)dnl
/*
 * DO_NOT_EDIT
 */
])
