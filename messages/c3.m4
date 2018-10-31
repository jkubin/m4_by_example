__HEADER([Josef Kubin], [2018/05/21], [messages])
___DESCR([messages in it's own arrays])
___POINT([branching to each buffer])
___USAGE([m4 common.m4 c3.m4 messages.mc > c3.c])

# assign numbers to buffers
define([ERROR_BUFFER], 1)
define([QUERY_BUFFER], 2)
define([WARNING_BUFFER], 3)

# β rule
define([FIRST_LINE], [
	# branch to number
	divert($0_BUFFER)"[$2]divert(-1)

	# change right hand side of rule
	define([$0], defn([NEXT_LINE]))
])

# β rule
define([NEXT_LINE], [
	divert($0_BUFFER)\n"
"[$2]divert(-1)
])

# A → β
define([ERROR], defn([FIRST_LINE]))
define([QUERY], defn([FIRST_LINE]))
define([WARNING], defn([FIRST_LINE]))

m4wrap([
	divert(0)dnl
/*
 * DO_NOT_EDIT
 */
const char warning_messages[[]] =
undivert(WARNING_BUFFER)";

const char error_messages[[]] =
undivert(ERROR_BUFFER)";

const char query_messages[[]] =
undivert(QUERY_BUFFER)";
])
