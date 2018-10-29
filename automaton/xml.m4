divert(-1)changequote([,])

__HEADER([Josef Kubin], [2018/06/22], [automaton])
___DESCR([another automata example])
___POINT([cycle automaton])
___USAGE([m4 xml.m4])

define([FOO], [dnl
	<foo>$1</foo>dnl
define([ITEM], defn([BAR]))dnl
])

define([START], [dnl
<?xml version="1.0" encoding="utf-8"?>
<automaton>
	<foo>$1</foo>dnl
define([ITEM], defn([BAR]))dnl
])

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
ITEM(a)
ITEM(a)
ITEM(a)
ITEM(a)
ITEM(a)
ITEM(a)
