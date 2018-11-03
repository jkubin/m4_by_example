divert(-1)changequote([,])

__HEADER([Josef Kubin], [2018/06/25], [stack])
___DESCR([strange macro name can be an advantage])
___POINT([])
___POINT([indir bypasses a tokenizer; strange macro names prevents unwanted macro expansion])
___USAGE([m4 not_a_token.m4])

define([.], [dot 1])

pushdef([.], [dot 2])
pushdef([.], [dot 3])
pushdef([.], [dot 4])

pushdef([!], [!])
pushdef([!], [?])
pushdef([!], [.])
pushdef([!], [No recursion ! ! !])

pushdef([$ % ^ & *], [1, 1, 1])
pushdef([$ % ^ & *], [2, 2, 2])
pushdef([$ % ^ & *], [3, 3, 3])
pushdef([$ % ^ & *], [4, 4, 4])
pushdef([$ % ^ & *], [5, 5, 5])
pushdef([$ % ^ & *], [6, 6, 6])

pushdef([0], [0 0 0])
pushdef([1], [1 1 1])

# dump a stack
define([RIGHT_RECURSE_DUMP], [ifdef([$1], [indir([$1])
popdef([$1])[]$0([$1])])])

define([BRAC], [[$@]])

define([__LEFT_RECURSE], [ifdef([$1],
	[popdef([$1])$0([$1], BRAC(indir([$1])))
$2])])

define([LEFT_RECURSE_DUMP], [ifdef([$1],
	[define([$0], defn([__LEFT_RECURSE]))$0([$1], BRAC(indir([$1])))])])

divert(0)dnl

.
indir([.])

!
indir([!])

RIGHT_RECURSE_DUMP([.])

RIGHT_RECURSE_DUMP([!])

$ % ^ & *
indir([$ % ^ & *])

# RIGHT_RECURSE_DUMP([$ % ^ & *])
LEFT_RECURSE_DUMP([$ % ^ & *])
