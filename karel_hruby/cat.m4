divert(-1)changequote([,])

__HEADER([Josef Kubin], [2018/10/06], [karel_hruby])
___DESCR([])
___POINT([files created by here document])
___USAGE([m4 cat.m4 karel_hruby.mc])

define([JANUARY], [
	esyscmd([cat <<EOF>> $0.txt
$1
EOF
])
])

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
