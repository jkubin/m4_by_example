divert(-1)changequote([,])

__HEADER([Josef Kubin], [2018/10/14], [duplic_file])
___DESCR([this (a bizarre) example tests txt files for duplicit content])
___POINT([content of file as macro name; brackets from printf prevents (possible) macro expansion])
___USAGE([m4 duplic_1.m4])

define([DUPLIC], [
	ifelse([$1], [], [], [

		# unpaired bracket from the file completely breaks script
		define([.CONTENT], esyscmd([printf '['; cat $1; printf ']']))

		ifdef(defn([.CONTENT]), [
			divert(0)dnl
warning: content of $1 is duplicit to indir(defn([.CONTENT]))
divert(-1)
		], [
			# remember file name
			define(defn([.CONTENT]), [[$1]])
		])

		# recursion
		$0(shift($@))
	])
])

DUPLIC(esyscmd([find -name '*.txt' -type f -printf '[%p], ']))
