divert(-1)changequote([,])

__HEADER([Josef Kubin], [2018/10/14], [duplic_file])
___DESCR([this (a bizarre) example tests txt files for duplicit content])
___POINT([content of file as macro name; brackets from sed prevents (possible) macro expansion])
___USAGE([m4 duplic_2.m4])

define([DUPLIC], [
	ifelse([$1], [], [], [

		# all problematic (possibly unpaired) brackets are escaped to C trigraph
		define([.CONTENT], esyscmd([sed 's/\[/??(/g; s/\]/??)/g; 1s/^/[/; $s/$/]/' $1]))

		ifdef(defn([.CONTENT]), [
			divert(0)dnl
warning: content of $1 is duplicit to indir(defn([.CONTENT]))
divert(-1)
		], [
			define(defn([.CONTENT]), [[$1]])
		])

		# recursion
		$0(shift($@))
	])
])

DUPLIC(esyscmd([find -name '*.txt' -type f -printf '[%p], ']))
