__HEADER([Josef Kubin], [2018/05/21], [messages])
___DESCR([all in one index])
___POINT([ineficient example (data are cached)])
___USAGE([m4 common.m4 h1.m4 messages.mc > h1.h])

# init counter
define([COUNTER], 1)

define([ERROR_PREFIX], [ERR_])
define([QUERY_PREFIX], [QUERY_])
define([WARNING_PREFIX], [WARN_])

define([ERROR], [
	divert(1)[#]define $0_PREFIX[$1]	0x[]eval(COUNTER, 16, 2) /* [$2] */
divert(-1)
	define([COUNTER], incr(COUNTER))
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

undivert(1)
#endif	/* __MESSAGES_H */
])
