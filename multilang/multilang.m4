__HEADER([Josef Kubin], [2018/10/15], [multilang])
___DESCR([input language records are tested to the correct number and line order])
___POINT([ONE multilanguage frozen file])
___USAGE([m4 -F multilang.m4f common.m4 multilang.m4 langs.m4 register.m4 error_strings.m4 warning_strings.m4 query_strings.m4 ... zillion.m4])

# create characteristic lang code string
define([LANG_CODE_CONCATENATION], [ARG1($1)[]ifelse([$#], [1], [], [$0(shift($@))])])

# recursive loop to find used languageds
define([FIND_USED_LANGS], [

	ifelse([$1], [], [], [

		# if language is not excluded
		ifdef([EXCLUDE_]ARG1($1), [], [

			# increment counter
			define([NUM_OF_LANGS], incr(NUM_OF_LANGS))
		])

		# recursion
		$0(shift($@))
	])
])

define([ARG_LIST_LOOP], [ifelse([$1], [1], [], [$0(decr($1))$$1, ])])

# exclude first argument and last argument (with language records)
define([CREATE_ARG_LIST], [ifelse(eval($1 > 1), [1], [ARG_LIST_LOOP(decr($1))], [
		G_ERROR([expected at least 2 arguments])
	])dnl
])

# exclude unused languages
define([EXCLUDE_LOOP], [ifelse([$1], [], [], [EXCLUDE_LANG_ROW($1)[]$0(shift($@))])])

define([EXCLUDE_LANG_ROW], [ifdef([EXCLUDE_$1], [], [[[$@],
]])])

# create a rule
define([BETA_ADD_RECORD], [

	# test for duplicit record
	ifdef([$0_$1], [
		G_ERROR([‘$0($1, ...)’ duplicit record])
	])

	# test for languages consistency
 	ifdef(LANG_CODE_CONCATENATION(LAST($@)),, [
 		G_ERROR([inconsistent language records])
 	])

	# define arguments
	define([ARG_LIST], BRAC(CREATE_ARG_LIST($#)EXCLUDE_LOOP(LAST($@))))

	# add new record to library
	define([$0_$1], BRAC(ARG_LIST($@)))
])

# first seen LANGS() makes language initialization
define([LANGS],	[

	# initialize number of used langs
	define([NUM_OF_LANGS], 0)

	FIND_USED_LANGS(LAST($@))

	# create characteristic testing string
	define(LANG_CODE_CONCATENATION(LAST($@)))

	# after initialization transition to BETA_ADD_RECORD node
	define([$0], defn([BETA_ADD_RECORD]))

# append content of BETA_ADD_RECORD also
]defn([BETA_ADD_RECORD]))

# registration is required for later cleaning
define([REGISTER], [

	# test for duplicity
	ifdef([$1], [
		G_ERROR([‘$1’ is already registered])
	])

	# push it on stack named "REGISTERED" for later cleaning
	pushdef([REGISTERED], [$1])

	# define it
	define([$1], defn([BETA_ADD_RECORD]))
])

# undefine unnecessary macros
define([CLEANING], [

	ifdef([REGISTERED], [

		# undefine remembered macro
		undefine(defn([REGISTERED]))

		# remove registered macro from stack
		popdef([REGISTERED])

		# right recursion
		$0
	])
])

# undefine unnecessary macros from frozen file to not collide with scripts
m4wrap([
	CLEANING

	undefine(

		[ARG_LIST],
		[ARG_LIST_LOOP],
		[BETA_ADD_RECORD],
		[CLEANING],
		[CREATE_ARG_LIST],
		[EXCLUDE_LANG_ROW],
		[EXCLUDE_LOOP],
		[FIND_USED_LANGS],
		[LANGS],
		[LANG_CODE_CONCATENATION],
		[REGISTER],

	)
])
