divert(-1)changequote([,])

__HEADER([Josef Kubin], [2018/05/21], [messages])
___DESCR([messages to CSV format])
___POINT([power of simplicity])
___USAGE([m4 csv.m4 messages.mc])

# β rule for QUERY WARNING
# A → β for ERROR
define([ERROR], [
	divert(0)[$0	$1	$2]
divert(-1)
])

# A → β
define([QUERY], defn([ERROR]))
define([WARNING], defn([ERROR]))
