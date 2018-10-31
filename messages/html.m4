dnl vim: set ft=m4:
<!DOCTYPE html>
<!-- DO_NOT_EDIT -->
<html>
<head>
<meta charset="UTF-8">
<style>
table, th, td {
border: 1px solid black;
border-collapse: collapse;
}
table {width: 800px;}
th {font-size: 3em;}
.err {color: red;}
.warn {color: blue;}
</style>
<title>Power of M4</title>
</head>
<body>
<table>
<tr><th colspan="3">Messages</th></tr>
divert(1)dnl
</table>
</body>
</html>
divert(-1)changequote([,])

__HEADER([Josef Kubin], [2018/05/21], [messages])
___DESCR([messages to html])
___POINT([expansion by message type; vim filetype on first line because of a bug])
___USAGE([m4 html.m4 messages.mc > messages.html])

define([ERROR_COLOR], [ class="err"])
define([WARNING_COLOR], [ class="warn"])
define([COUNTER], 0)

define([ERROR], [

	define([COUNTER], incr(COUNTER))

	divert(0)<tr[]ifdef([$0_COLOR], [$0_COLOR])><td>COUNTER.</td><td>[$1]</td><td>[$2]</td></tr>
divert(-1)
])

define([QUERY], defn([ERROR]))
define([WARNING], defn([ERROR]))
