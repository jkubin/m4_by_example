divert(-1)changequote([,])

__HEADER([Josef Kubin], [2018/10/13], [karel_hruby])
___DESCR([script to find duplicit record])
___POINT([sentence as an M4 macro; prints duplicit records])
___USAGE([m4 duplic.m4 karel_hruby.mc])

# A → β
# β rule
define([JANUARY], [
	# test for duplicity
	ifdef([$2], [
		divert(0)dnl
__file__:__line__:warning: duplicit record: [$0($@)]: first occurrence: indir([$2])
divert(-1)
	], [
		define([$2], __line__[: [$0($@)]])
	])
])

# A → β
define([FEBRUARY],	defn([JANUARY]))
define([MARCH],		defn([JANUARY]))
define([APRIL],		defn([JANUARY]))
define([MAY],		defn([JANUARY]))
define([JUNE],		defn([JANUARY]))
define([JULY],		defn([JANUARY]))
define([AUGUST],	defn([JANUARY]))
define([SEPTEMBER],	defn([JANUARY]))
define([OCTOBER],	defn([JANUARY]))
define([NOVEMBER],	defn([JANUARY]))
define([DECEMBER],	defn([JANUARY]))

define([SPRING],	defn([JANUARY]))
define([SUMMER],	defn([JANUARY]))
define([AUTUMN],	defn([JANUARY]))
define([WINTER],	defn([JANUARY]))

define([FARM],		defn([JANUARY]))
