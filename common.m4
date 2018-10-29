divert(-1)changequote([,])

__HEADER([Josef Kubin], [2018/10/15], [m4_by_example])
___DESCR([to understand M4, you must first understand context-free grammar rewriting rule A ---> beta])
___POINT([the most general rules for all scripts])
___USAGE([m4 common.m4 ... specific.m4 source_data.mc > specific.file])

# project name
define([PROJECT_NAME],	[M4 by example])
define([PROJECT_ROOT_URL],	[https://github.com/jkubin/m4_by_example/])

# select argument and expand it ($n ---> beta)
define([ARG1], [$1])
define([ARG2], [$2])
define([ARG3], [$3])
define([ARG4], [$4])
define([ARG5], [$5])
define([ARG6], [$6])
define([ARG7], [$7])
define([ARG8], [$8])
define([ARG9], [$9])
define([ARG10], [$10])

# returns number of arguments
define([LEN], [$#])

# put additional brackets around arguments to prevent unwanted expansion
define([BRAC], [[$@]])

# select last argument and expand it ($$# ---> beta)
define([LAST], [pushdef([$0], [$$#])$0($@)[]popdef([$0])])

# select last but one and expand it ($decr($#) ---> beta,  must be at least two arguments)
define([LAST_BUT_ONE], [pushdef([$0], $decr($#))$0($@)[]popdef([$0])])

# auxiliary macro for strings to instantly see length
define([RULER], [ifelse([$1], [1], [1], [$0(decr($1))[]eval($1 % 10)])])

# alert for users in target files
define([DO_NOT_EDIT], [DO NOT EDIT! Generated automatically!])

# use general warning, if something is strange
define([G_WARNING], [errprint(__file__:__line__[: warning: $*
])])

# use general abort if something goes wrong
define([G_ERROR], [errprint(__file__:__line__[: error: $*
])m4exit(1)])

# init LIFO and enqueue item to the right
define([ENQ_FIFO], [
	ifdef([$1], [
		define([$1], defn([$1])[, ]BRAC(shift($@)))
	], [
		define([$1], BRAC(shift($@)))
	])
])

# init LIFO and enqueue item to the left
define([ENQ_LIFO], [
	ifdef([$1], [
		define([$1], BRAC(shift($@))[, ]defn([$1]))
	], [
		define([$1], BRAC(shift($@)))
	])
])

# error rule for automata
define([NOT_IN_ALPHABET], [G_ERROR([symbol ‘$*’ is not in alphabet])])

#########################################################################################
# the following are beta rules (see context-free grammar rule A ---> beta)

## beta count up counter (index hole version)
#define([BETA_COUNT_UP], [dnl
#define([$0_COUNTER], $1)dnl
#define([$0], [ifelse($][#, 0,
#	[$0_COUNTER[]define([$0_COUNTER], incr($0_COUNTER))],
#	[define([$0_COUNTER], eval($0_COUNTER + ]$][1[))])])dnl
#])

# beta count up counter
define([BETA_COUNT_UP], [dnl
	define([$0_COUNTER], $1)dnl
	define([$0], [$0_COUNTER[]define([$0_COUNTER], incr($0_COUNTER))])dnl
])

# beta count down counter
define([BETA_COUNT_DOWN], [dnl
	define([$0_COUNTER], $1)dnl
	define([$0], [$0_COUNTER[]define([$0_COUNTER], decr($0_COUNTER))])dnl
])
