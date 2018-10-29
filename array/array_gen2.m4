divert(-1)changequote([,])

__HEADER([Josef Kubin], [2018/05/10], [array])
___DESCR([generates initial hex array for an external memory])
___POINT([macro evaluated only once but used many times])
___POINT([left recursion (generally not recommended); print the result into brackets])
___USAGE([m4 -DLENGTH=$[$RANDOM & 0x1f] array_gen2.m4])

define([SEQ], [ifelse($1, 0, [[0x00, ]], [$0(decr($1))ifelse(eval($1 & 0xf), 0, [
])[0x]eval($1, 16, 2)[, ]])])

# evaluate array only once
define([INDICES], {
SEQ(LENGTH)
})

# LENGTH++
define([LENGTH], incr(LENGTH))

define([BRAC], [[$@]])

divert(0)
#define [LENGTH]	LENGTH	<--- no expansion, brackets untouched
[#]define [LENGTH]	LENGTH

#pragma romdata FRAM_DATA
unsigned char auto_array[[8]]BRAC(LENGTH) = {
INDICES,
INDICES,
INDICES,
INDICES,
INDICES,
INDICES,
INDICES,
INDICES,
};
