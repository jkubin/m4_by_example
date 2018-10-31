__HEADER([Josef Kubin], [2018/05/21], [messages])
___DESCR([messages in it's own arrays])
___POINT([how to use different counters])
___USAGE([m4 common.m4 h3.m4 messages.mc > h3.h])

# init counters
define([ERROR_COUNTER], 1)
define([QUERY_COUNTER], 1)
define([WARNING_COUNTER], 1)

# set numbers to diverts
define([ERROR_BUFFER], 1)
define([QUERY_BUFFER], 2)
define([WARNING_BUFFER], 3)

# set prefixes
define([ERROR_PREFIX], [ERR_])
define([QUERY_PREFIX], [QUERY_])
define([WARNING_PREFIX], [WARN_])

define([ERROR], [
	divert($0_BUFFER)[#]define $0_PREFIX[$1]	$0_COUNTER	/* [$2] */
divert(-1)
	define([$0_COUNTER], incr($0_COUNTER))
])

define([QUERY], defn([ERROR]))
define([WARNING], defn([ERROR]))

m4wrap([
	divert(0)dnl
/*
 * DO_NOT_EDIT
 */
#ifndef __MESSAGES_H
#define __MESSAGES_H

undivert(WARNING_BUFFER)
undivert(ERROR_BUFFER)
undivert(QUERY_BUFFER)
#endif	/* __MESSAGES_H */
])
