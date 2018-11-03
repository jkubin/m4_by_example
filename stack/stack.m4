divert(-1)changequote([,])

__HEADER([Josef Kubin], [2018/05/14], [stack])
___DESCR([stacks of macros])
___POINT([you can have as many stacks as you want; dump them by loop (right recursion); braces])
___USAGE([m4 stack.m4])

pushdef([MACRO_1], [a])
pushdef([MACRO_1], [b])
pushdef([MACRO_1], [c])
pushdef([MACRO_1])
pushdef([MACRO_1])
pushdef([MACRO_1])
pushdef([MACRO_1], [g])
pushdef([MACRO_1], [h])
pushdef([MACRO_1], [i])

pushdef([MACRO_2], [x])
pushdef([MACRO_2], [y])
pushdef([MACRO_2], [z])

pushdef([MACRO_3], [+])
pushdef([MACRO_3], [/])
pushdef([MACRO_3], [*])

# dump a stack
define([DUMP], [ifdef([$1], [$1
popdef([$1])[]$0([$1])])])

divert(0)dnl
[MACRO_1]	--->	MACRO_1
[DUMP([MACRO_1])]
DUMP([MACRO_1])dnl
[MACRO_1]	--->	MACRO_1

[MACRO_2]	--->	MACRO_2
[DUMP([MACRO_2])]
DUMP([MACRO_2])dnl
[MACRO_2]	--->	MACRO_2

[MACRO_3]	--->	MACRO_3
[DUMP([MACRO_3])]
DUMP([MACRO_3])dnl
[MACRO_3]	--->	MACRO_3
