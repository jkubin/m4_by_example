__HEADER([Josef Kubin], [2018/10/30], [dictionary])
___DESCR([])
___POINT([])
___USAGE([m4 common.m4 dict.m4 html_def.m4 ...])

# define counter for buffers
define([BUFFER_COUNTER], defn([BETA_COUNT_UP]))

# define indices to buffers
define([NAVIGATION_BUFFER],  1)
define([AFTER_NAVIGATION], 2)

BUFFER_COUNTER(3)

define([DESCRIPTION], [
	define([$0], [$1])
])

define([DICTIONARY_HEADER], [dnl
<p>DESCRIPTION</p>
--AUTHOR_SOURCE_URL
])

#define([DICTIONARY_HEADER])	<--- uncomment it, if you want empty field
