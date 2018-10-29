divert(-1)changequote([,])

__HEADER([Josef Kubin], [2018/05/17], [retval])
___DESCR([testing a return value from an external command])
___POINT([error, warning; content of diverts in early termination; sysval])
___USAGE([m4 retval.m4])

divert(1)
one
divert(2)dnl	<--- note "dnl"
two
divert(3)
three
divert(-1)

# undefine([m4exit])	<--- try to uncomment
# popdef([m4exit])	<--- try to uncomment
# pushdef([m4exit])	<--- try to uncomment

define([EXTERNAL_COMMAND], [dnl
	# external command command
	# everything can always go wrong, test return value (unless you are not lazy)
	esyscmd([echo -n "Hello world!"; exit -1])
	ifelse(sysval, [0], [], [WARNING([something strange happens])])
	ifelse(sysval, [0], [], [ERROR([return value])])
])

define([ERROR], [errprint(__file__:__line__[: error: $1
])m4exit(sysval)])

define([WARNING], [errprint(__file__:__line__[: warning: $1
])])

divert(0)dnl
an EXTERNAL_COMMAND
