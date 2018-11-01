__HEADER([Josef Kubin], [2018/10/06], [karel_hruby])
___DESCR([WARNING: heredoc is a big security hole])
___POINT([files created from one heredoc])
___USAGE([m4 common.m4 karel_hruby.m4 heredoc.m4 karel_hruby.mc > heredoc.txt && . heredoc.txt && rm heredoc.txt])

#                              _______
#                             |      /
#      ___________       _____V_____/
# --->/ BETA_INIT \---->/ BETA_ITEM \
#     \___________/     \___________/
#

define([BETA_INIT], [
	divert($0_SCN)dnl
cat <<EOF>> [$0].txt
[$1	$2]
divert(-1)

	# push item to the stack named "OPENED_SECTION" to close it later
	pushdef([OPENED_SECTION], [$0])

	# transition to the next node
	define([$0], defn([BETA_ITEM]))
])

define([BETA_ITEM], [
	divert($0_SCN)dnl
[$1	$2]
divert(-1)
])

define([JANUARY],	defn([BETA_INIT]))
define([FEBRUARY],	defn([BETA_INIT]))
define([MARCH],		defn([BETA_INIT]))
define([APRIL],		defn([BETA_INIT]))
define([MAY],		defn([BETA_INIT]))
define([JUNE],		defn([BETA_INIT]))
define([JULY],		defn([BETA_INIT]))
define([AUGUST],	defn([BETA_INIT]))
define([SEPTEMBER],	defn([BETA_INIT]))
define([OCTOBER],	defn([BETA_INIT]))
define([NOVEMBER],	defn([BETA_INIT]))
define([DECEMBER],	defn([BETA_INIT]))

define([SPRING],	defn([BETA_INIT]))
define([SUMMER],	defn([BETA_INIT]))
define([AUTUMN],	defn([BETA_INIT]))
define([WINTER],	defn([BETA_INIT]))

define([FARM],		defn([BETA_INIT]))

define([CLOSE], [
	divert($1_SCN)dnl
EOF
divert(-1)
])

define([CLOSE_OPENED_SECTIONS], [

	ifdef([OPENED_SECTION], [
		CLOSE(defn([OPENED_SECTION]))
		popdef([OPENED_SECTION])

		# recursive loop (no brackets)
		$0
	])
])

m4wrap([
	CLOSE_OPENED_SECTIONS
])
