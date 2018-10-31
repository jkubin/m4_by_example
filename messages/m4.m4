`#' DO_NOT_EDIT!
divert(-1)changequote([,])

__HEADER([Josef Kubin], [2018/05/21], [messages])
___DESCR([generates M4 source data file])
___POINT([directly produces M4 file without unwanted data; NO m4wrap])
___USAGE([m4 m4.m4 messages.mc > messages.m4])

# β rule for QUERY WARNING THANKS_TO
# A → β for ERROR
define([ERROR], [
	divert(0)[$0($@)]
divert(-1)
])

# A → β
define([QUERY], defn([ERROR]))
define([WARNING], defn([ERROR]))
define([THANKS_TO], defn([ERROR]))
