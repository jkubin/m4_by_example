divert(-1)changequote([,])

__HEADER([Josef Kubin], [2018/10/14], [dry])
___DESCR([how to use keyword defn])
___POINT([gluing pieces of macros together])
___USAGE([m4 dry.m4])

define([DRY], [[($0)] Do not Repeat Yourself!])
define([TRY], defn([DRY]))
define([DIE], [Duplication Is Evil] defn([DRY]))

divert(0)dnl
DRY
TRY
DIE
