divert(-1)changequote([,])

__HEADER([Josef Kubin], [2018/06/25], [stack])
___DESCR([empty macro name])
___POINT([a special case of a blank macro name])
___USAGE([m4 indir.m4])

define([], [the universe has risen from emptiness])

pushdef([], [with a next strange macro on the stack of emptiness ...])
pushdef([], [M4 seems to be crazy as fractals])
pushdef([], [empty macro name is a valid name])
pushdef([], [this is the top of stack of nothingness])

# dump a stack
define([DUMP], [ifdef([$1], [indir([$1])
popdef([$1])$0([$1])])])

divert(0)
our empty macro is ifdef([], [defined], [not defined])

[]	<--- This is a futile attempt to expand emptiness to matter, we pray to wrong gods...

indir([])	<--- Our god is indir, we have to pray for indir!

DUMP([])	<--- dump nothingness

our empty macro is ifdef([], [defined], [not defined])
