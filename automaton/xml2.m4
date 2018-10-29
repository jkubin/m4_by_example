divert(-1)changequote([,])

__HEADER([Josef Kubin], [2018/06/22], [automaton])
___DESCR([useless])
___POINT([cycle automaton; DRY (Do not Repeat Yourself);use of dnl])
___USAGE([m4 xml2.m4])

define([FOO], [dnl
	<foo>$1</foo>dnl
define([ITEM], defn([BAR]))dnl
])

define([START], [dnl
<?xml version="1.0" encoding="utf-8"?>
<automaton>
]defn([FOO]))

define([BAR], [dnl
	<bar>$1</bar>dnl
define([ITEM], defn([BAZ]))dnl
])

define([BAZ], [dnl
	<baz>$1</baz>dnl
define([ITEM], defn([FOO]))dnl
])

define([ITEM], defn([START]))

m4wrap([dnl
ifelse(defn([ITEM]), defn([START]), [], [</automaton>
])dnl
])

divert(0)dnl
ITEM([a])
<!-- comment for xml -->
ITEM([b])
dnl ITEM([c])
dnl ITEM([d])
ITEM([e])
