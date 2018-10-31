__HEADER([Josef Kubin], [2018/05/21], [messages])
___DESCR([array of pointers to strings])
___POINT([a state machine])
___USAGE([m4 common.m4 c2.m4 messages.mc > c2.c])

# A → β
# β rule
define([ERROR], [
	divert(0)"[$2]",	/* [$1] */
divert(-1)
])

# A → β
define([QUERY], defn([ERROR]))
define([WARNING], defn([ERROR]))

divert(0)dnl
/*
 * DO_NOT_EDIT
 */
const char *all_messages[[]] = {
divert(1)dnl
};
divert(-1)
