divert(-1)changequote([,])

__HEADER([Josef Kubin], [2018/05/10], [branching])
___DESCR([])
___POINT([branch by ifelse])
___USAGE([m4 -DVALUE=$[$RANDOM & 0xf] ifelse.m4])

define([IFELSE], [ifelse(
		[$1], [0],  [zero],
		[$1], [1],  [one],
		[$1], [2],  [two],
		[$1], [3],  [three],
		[$1], [4],  [four],
		[$1], [5],  [five],
		[$1], [6],  [six],
		[$1], [7],  [seven],
		[$1], [8],  [eight],
		[$1], [9],  [nine],
		[$1], [10], [ten],
		[default: branch $1 is not defined])[]dnl
])

divert(0)dnl
[IFELSE](VALUE)
IFELSE(VALUE)
