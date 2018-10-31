__HEADER([Josef Kubin], [2018/10/30], [dictionary])
___DESCR([])
___POINT([])
___USAGE([m4 -DFLAGS=... dict_rev.m4 src.mc > src_rev.mc])

define([DICTIONARY], [dnl
REGISTER_DICTIONARY_RULE([$0])dnl
divert(-1)
	define([FILTERED_FLAGS], BRAC(patsubst([$5], __FLAGS__)))

	# filter inappropriate records
	ifelse(FILTERED_FLAGS, [], [
		divert(0)dnl
[$0([$3],[$4],[$1],[$2]]ifelse([$5], [], [], [,[[$5]]])[)]dnl
divert(-1)
	], [
		divert(0)dnl
[#] "$2" removed because of BRAC(FILTERED_FLAGS)dnl
divert(-1)
	])

divert(0)dnl
])

# temporarily disable quoting
changequote(,)

divert(0)dnl
