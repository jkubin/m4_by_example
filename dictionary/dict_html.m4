# vim: set ft=m4:
# ^^^^ this is Vim modeline (to force filetype)
__HEADER([Josef Kubin], [2018/10/24], [dictionary])
___DESCR([fast and small html generator])
___POINT([dictionary letters as associative to buffers])
___USAGE([m4 common.m4 dict.m4 dict_html.m4 dict_...mc > ...html])

# β rule
define([DICTIONARY], [

	define([LETTER], [[letter_$1]])

	ifdef(LETTER, [], [

		# assign uniq number to buffer; note missing parenthesis
		define(LETTER, BUFFER_COUNTER)

		# close opened tags later
		pushdef([OPENED_TAG], indir(LETTER))

		# append new letter to navigation
		divert(NAVIGATION_BUFFER)dnl
		<li><a href="[#]LETTER">$1</a></li>	<!-- indir(LETTER) -->
divert(indir(LETTER))dnl
<h2 id="LETTER"><a href="[#]LETTER">$1</a></h2>	<!-- indir(LETTER) -->
<ol>
divert(-1)
	])

	# append new record to appropriate buffer
	divert(indir(LETTER))dnl
	<li><div>$2</div>$4</li>
divert(-1)
])

# A → β
define([CLOSE_OPENED_TAGS], [

	ifdef([OPENED_TAG], [
		divert(OPENED_TAG)dnl
</ol>
divert(-1)
		popdef([OPENED_TAG])

		# recursion
		$0
	])
])

# TARGET_FILE expansion logic (M4 tokenizer bypassing)
define([next forward.html],	[[reverse.html]])
define([next reverse.html],	[[forward.html]])
define([turn forward.html],	[[Česko-Brněnský]])
define([turn reverse.html],	[[Brněnsko-Český]])

m4wrap([
	CLOSE_OPENED_TAGS

	divert(0)dnl
<!DOCTYPE html>
<!-- DO_NOT_EDIT -->
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="dict.css">
<title>DICTIONARY_NAME</title>
</head>
<body>
<header>
<h1>DICTIONARY_NAME</h1>
DICTIONARY_HEADER[]dnl
</header>
<nav>
	<ul>
	<!-- NAVIGATION_BUFFER -->
divert(AFTER_NAVIGATION)dnl
	<!-- AFTER_NAVIGATION -->
	</ul>
	<a href="indir(next TARGET_FILE)">Otočit na indir(turn TARGET_FILE)</a>
</nav>
<article>
divert(BUFFER_COUNTER)dnl
</article>
<footer>
	<p><a href="PROJECT_URL">PROJECT_URL</a></p>
</footer>
</body>
</html>
])

define([__HEADER], [
	define([AUTHOR], [$1])
	define([AUTHOR_SOURCE_URL], [<a href="SOURCE_URL">$1</a>])
	define([DICTIONARY_NAME], [$3])
])

define([__SOURCE], [
	define([SOURCE_URL], [$1])
])
