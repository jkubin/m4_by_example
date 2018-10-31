divert(-1)changequote([,])

__HEADER([Josef Kubin], [2018/10/30], [dictionary])
___DESCR([])
___POINT([])
___USAGE([m4 fwd_rev.m4 dict_fwd.m4 ...mc > ...mc])

define([BRAC], [[$@]])

define([__FLAGS__], [ifdef([FLAGS], BRAC(BRAC(FLAGS)))])

define([REGISTER_DICTIONARY_RULE], [dnl
[define([$1], defn([DICTIONARY]))dnl]define([$0])

])

define([SET_QUOTING_BACK], [changequote([,])[$0[]dnl]])
