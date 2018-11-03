divert(-1)changequote([,])

__HEADER([Josef Kubin], [2018/06/23], [loops])
___DESCR([prints a ruler above strings; max. string length for Perl script])
___POINT([macro evaluated only once but used many times; macro redefinition])
___POINT([left recursion (generally not recommended); print the result into brackets])
___USAGE([m4 -DLENGTH=$[$RANDOM & 0x3f] ruler.m4])

define([RULER], [ifelse([$1], [0], [], [$0(decr($1))[]eval($1 % 10)])])

# evaluate and redefine
define([RULER], //RULER([LENGTH]))	<--- evaluated only once but used many times

define([BRAC], [[$@]])

define([PERL_TRUNC_INFO], incr(LENGTH))

divert(0)dnl
char array_of_strings[[]][[1]]BRAC(incr(PERL_TRUNC_INFO)) =
{
RULER
"Hello world!",	// PERL_TRUNC_INFO
},
{
RULER
"Ruler above the string is an important help!",	// PERL_TRUNC_INFO
},
};
