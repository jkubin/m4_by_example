__HEADER([Josef Kubin], [2018/05/21], [messages])
___DESCR([messages in it's own arrays])
___POINT([branching to each buffer; NO m4wrap])
___USAGE([m4 common.m4 c4.m4 messages.mc > c4.c])

# assign numbers to buffers
define([WARNING_BUFFER],       0)
define([AFTER_WARNING_BUFFER], 2)

define([ERROR_BUFFER],         3)
define([AFTER_ERROR_BUFFER],   4)

define([QUERY_BUFFER],         5)
define([AFTER_QUERY_BUFFER],   6)

# β rule
define([FIRST_LINE], [
	# expand to buffer number
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

divert(0)dnl
/*
 * DO_NOT_EDIT
 */
const char warning_messages[[]] =
divert(AFTER_WARNING_BUFFER)";

const char error_messages[[]] =
divert(AFTER_ERROR_BUFFER)";

const char query_messages[[]] =
divert(AFTER_QUERY_BUFFER)";
divert(-1)
