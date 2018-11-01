divert(-1)changequote([,])

__HEADER([Josef Kubin], [2018/10/31], [dictionary])
___DESCR([conversion M4 database to CSV])
___POINT([how to create variable count of records])
___USAGE([m4 csv_loop.m4 ...])

define([CSV_LINE], [
	ifelse([$1], [], [], [
		divert(0)dnl
	[$1]dnl
divert(-1)
		$0(shift($@))
	])
])

# β rule
define([DICTIONARY], [dnl
	divert(0)dnl
[$1]dnl
divert(-1)

	CSV_LINE(shift($@))

	# append new line
	divert(0)
divert(-1)
])
