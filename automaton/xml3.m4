divert(-1)changequote([,])

__HEADER([Josef Kubin], [2018/06/22], [automaton])
___DESCR([synthtetic example])
___POINT([macros for automaton mixed with confused comments])
___USAGE([m4 xml3.m4])

define([FOO], [
	divert(0)dnl
	<foo>$1</foo>
divert(-1)
	define([$0], defn([BAR]))
])

define([START], [
	divert(0)dnl
<?xml version="1.0" encoding="utf-8"?>
<automaton>
divert(-1)
]defn([FOO]))

define([BAR], [
	divert(0)dnl
	<bar>$1</bar>
divert(-1)
	define([$0], defn([BAZ]))
])

define([BAZ], [
	divert(0)dnl
	<baz>$1</baz>
divert(-1)
	define([$0], defn([FOO]))
])

define([ITEM], defn([START]))

m4wrap([
	divert(0)dnl
ifelse(defn([ITEM]), defn([START]), [], [</automaton>
])])

################################################################################
# The following confused data is usually in a different macro configuration file.mc

---8<---

# input macros with (possible) comments
this is a first item in xml ---> ITEM([a])

	ITEM([b])		<--- second item

hash marks are not necessary unless following words does not contain a macro
ITEM([c])
dnl ITEM([d])	<--- commented out by dnl
# ITEM([e])	<--- commented out by #

...

ITEM([f])

... many text comments scattered in the source code

that's all folks
