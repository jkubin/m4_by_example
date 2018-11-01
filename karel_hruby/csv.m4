divert(-1)changequote([,])

__HEADER([Josef Kubin], [2018/10/05], [karel_hruby])
___DESCR([the simplest script produces csv])
___POINT([prints directly to stdout; temporary buffer not used])
___USAGE([m4 csv.m4 karel_hruby.mc > karel_hruby.csv])

# A → β
# β rule
define([JANUARY], [
	divert(0)dnl
[$0	$1	$2]
divert(-1)
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
