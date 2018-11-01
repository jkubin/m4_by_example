divert(-1)changequote([,])

__HEADER([Josef Kubin], [2018/10/31], [dictionary])
___DESCR([conversion M4 database to CSV])
___POINT([the most trivial transformation])
___USAGE([m4 csv.m4 ...])

# β rule
define([DICTIONARY], [dnl
	divert(0)dnl
[$1	$2	$3	$4]
divert(-1)
])
