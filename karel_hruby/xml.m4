__HEADER([Josef Kubin], [2018/09/18], [karel_hruby])
___DESCR([])
___POINT([macro-automaton; stack])
___USAGE([m4 common.m4 karel_hruby.m4 xml.m4 lang_cz.m4 karel_hruby.mc > karel_hruby_cz.xml])
# ___USAGE([m4 common.m4 karel_hruby.m4 xml.m4 lang_sk.m4 karel_hruby.mc > karel_hruby_sk.xml])
# ___USAGE([m4 common.m4 karel_hruby.m4 xml.m4 lang_en.m4 karel_hruby.mc > karel_hruby_en.xml])
# ___USAGE([m4 common.m4 karel_hruby.m4 xml.m4 lang_de.m4 karel_hruby.mc > karel_hruby_de.xml])

#                              _______
#                             |      /
#      ___________       _____V_____/
# --->/ BETA_INIT \---->/ BETA_ITEM \
#     \___________/     \___________/
#

# β rule
define([BETA_INIT], [
	divert($0_SCN)dnl
<$0_WRAP code="$0_CODE">
<name>$0_NAME</name>
	<item>$2</item>
divert(-1)

	# push item to the stack named "OPENED_SECTION" to close it later
	pushdef([OPENED_SECTION], [$0])

	# transition to the next node
	define([$0], defn([BETA_ITEM]))
])

# β rule
define([BETA_ITEM], [
	divert($0_SCN)dnl
	<item>$2</item>
divert(-1)
])

# A → β
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
</$1_WRAP>
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

	divert(0)dnl
<?xml version="1.0" encoding="utf-8"?>
<proverbs>
undivert[]dnl
</proverbs>
])
