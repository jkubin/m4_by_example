divert(-1)changequote([,])

__HEADER([Josef Kubin], [2018/10/15], [m4_by_example])
___DESCR([to understand M4, you must first understand context-free grammar rewriting rule A → β])
___POINT([the most general rules for all scripts])
___USAGE([m4 common.m4 ... specific.m4 source_data.mc > specific.file])

# project name
define([PROJECT_NAME],	[M4 by example])
define([PROJECT_ROOT_URL],	[https://github.com/jkubin/m4_by_example/])

# alert for users in target files
define([DO_NOT_EDIT], [DO NOT EDIT! Generated automatically!])
