divert(-1)changequote([,])

__HEADER([Josef Kubin], [2018/05/21], [messages])
___DESCR([messages to xml format])
___POINT([branching; fast stream version; NO temporary data in memory!])
___USAGE([m4 xml.m4 messages.mc > messages.xml])

define([DO_NOT_EDIT], [DO NOT EDIT! Generated automatically!])

define([ERROR_XML], [error])
define([QUERY_XML], [query])
define([WARNING_XML], [warning])

define([ERROR], [
	divert(0)	<item><id>[$1]</id><$0_XML>[$2]</$0_XML></item>
divert(-1)
])

define([QUERY], defn([ERROR]))
define([WARNING], defn([ERROR]))

divert(0)dnl
<!-- DO_NOT_EDIT -->
<?xml version="1.0" encoding="utf-8"?>
<messages>
divert(1)dnl
</messages>
divert(-1)dnl
