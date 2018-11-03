divert(-1)changequote([,])

__HEADER([Josef Kubin], [2018/10/16], [multilang])
___DESCR([testing benchmark])
___POINT([benchmark to see power of M4 hash database])
___USAGE([m4 benchmark.m4])

# also left recursion for fun :-D
define([BENCHMARK], [
	ifelse([$1], [0], [], [
		divert(0)dnl
[#     123456789012345678901234567890
INFO(TEST_MSG_$1, [...], [
[cz, [Venturiho trubice s plechovým konfuzorem]],
[sk, [Venturiho trubica s plechovým konfuzorem]],
[pl, [Venturi konfuzory sheet]],
[en, [Venturi sheet confusors]],
[de, [Venturi-Bogen Konfusoren]],
[fr, [Venturi feuille confusors]],
[lv, [Venturi lokšņu confusors]],
[mk, [Вентури лист confusors]],
[ru, [Venturi лист конфузоров]],
])]
divert(-1)
		# recursion
		$0(decr($1))
	])
])

BENCHMARK(100000)
