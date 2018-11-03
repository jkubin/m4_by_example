divert(-1)changequote([,])

__HEADER([Josef Kubin], [2018/06/23], [loops])
___DESCR([prints all printable characters])
___POINT([how to print problematic characters (quoting, comments)])
___USAGE([m4 ascii.m4])

define([ASCII], [
	# change brackets to multicharacter delimiters
	changequote(<<,>>)
	# comments are disabled from following line
	changecom(,)
	divert(0)format(%c, $1)<<>>divert(-1)
changecom(#,
)
	# familiar comments are back; set brackets again
	changequote([,])
	# end loop condition (used right recursion)
	ifelse([$1], [127], [], [$0(incr($1))])
])

# prints the line of chars from ord(32) to ord(127)
ASCII([32])

# prints final new line
divert(0)
