divert(-1)changequote([,])

__HEADER([Josef Kubin], [2018/10/08], [automaton])
___DESCR([])
___POINT([])
___USAGE([m4 common.m4 abc_star.m4])

# (abc)*
#                       c
#        +----------------------------+
#        |                            |
#      __V__     a     ___     b     _|_
# --->// A \\-------->/ B \-------->/ C \
#     \\___//         \___/         \___/
#

define([ABC], [%%%])

divert(0)dnl
ABC([])
