divert(-1)changequote([,])

# Josef Kubin	2018/09/30	hello_world
#
# usage:
# m4 hello_world.m4

define([HELLO_WORLD], [Hello world!])

divert(0)dnl
HELLO_WORLD
