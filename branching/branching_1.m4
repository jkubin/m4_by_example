changequote([,])
define([A_0], [zero])
define([A_1], [one])
define([A_2], [two])
define([A_3], [three])
define([A_4], [four])
define([A_5], [five])
define([A_6], [six])
define([A_7], [seven])
define([A_8], [eight])
define([A_9], [nine])
define([A], [A_$1])
or otherwise:
#define([A], [$0_$1])
A(3) → A_3 → three

define([A], [A_[]eval($1 % 10)])
A(33)
A_3

define([B], [$1])
B(A(33))
three

define([A], [B(A_[]eval($1 % 10))])

X(A(33)) X(A_3) A_3 three

define([A], [A_[]eval($1 % 10)])

A(eval(33 % 10))

define(`A', `')
