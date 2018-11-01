# vim: set ft=m4:
# ^^^^ this is Vim modeline (to force filetype)
__HEADER([Josef Kubin], [2018/10/04], [karel_hruby])
___DESCR([])
___POINT([])
___USAGE([m4 common.m4 karel_hruby.m4 lang_cz.m4 rejstrik_html.m4 karel_hruby.mc > karel_hruby_cz.html])

#                              _______
#                             |      /
#      ___________       _____V_____/
# --->/ BETA_INIT \---->/ BETA_ITEM \
#     \___________/     \___________/
#

# beta rule to initialization
define([BETA_INIT], [

	define([ANCHOR], $0_CODE[]_$1)
	define(defn([ANCHOR]))

	divert($0_NAV)dnl
		<li><a href="[#]$0_CODE">$0_NAME</a></li>
divert($0_ABC)dnl
	<section>
		<h2 id="$0_CODE">$0_NAME</h2>
		<ul>
			<li><a href="[#]defn([ANCHOR])">$1</a></li>
divert($0_SCN)dnl
		<ol>
			<li id="defn([ANCHOR])">$2</li>
divert(-1)

	# push item to the stack named "OPENED_SECTION" to close it later
	pushdef([OPENED_SECTION], [$0])

	# transition to the next node
	define([$0], defn([BETA_ITEM]))
])

# beta rule to process items
define([BETA_ITEM], [

	# if the anchor has never been seen
	ifdef($0_CODE[]_$1, [
		divert($0_SCN)dnl
			<li>$2</li>
divert(-1)
	], [
		define([ANCHOR], $0_CODE[]_$1)
		define(defn([ANCHOR]))

		divert($0_ABC)dnl
			<li><a href="[#]defn([ANCHOR])">$1</a></li>
divert($0_SCN)dnl
			<li id="defn([ANCHOR])">$2</li>
divert(-1)
	])
])

# A ---> beta
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
	divert($1_ABC)dnl
		</ul>
divert($1_SCN)dnl
		</ol>
	</section>
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

# append if duplicit
define([___DESCR], [define([DESCRIPTION], defn([DESCRIPTION])[<p>$1</p>
])])

m4wrap([
	CLOSE_OPENED_SECTIONS

	divert(0)dnl
<!DOCTYPE html>
<!-- DO_NOT_EDIT -->
<html>
<head>
<meta charset="UTF-8">
<title>AUTHOR</title>
<style>
html {
	font-size: 120%;
}
section ul li {
	display: inline;
}
</style>
</head>
<body>
<header>
<h1>AUTHOR</h1>
DESCRIPTION[]dnl
</header>
<nav>
	<h2>MONTHS</h2>
	<ul>
divert(END_OF_MONTHS)dnl
	</ul>
	<h2>SEASONS</h2>
	<ul>
divert(END_OF_SEASONS)dnl
	</ul>
	<h2>THE_OTHERS</h2>
	<ul>
divert(SOMETHING_BETWEEN_NAV_AND_ARTICLE)dnl
	</ul>
</nav>
<article>
divert(END_OF_HTML_PAGE)dnl
</article>
<footer>
	<p><a href="PROJECT_URL">PROJECT_NAME</a></p>
</footer>
</body>
</html>
])
