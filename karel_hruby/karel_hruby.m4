__HEADER([Josef Kubin], [2018/09/18], [karel_hruby])
___DESCR([definitions to generate html])
___POINT([how to generate indices for buffers])
___USAGE([m4 common.m4 karel_hruby.m4 ??.m4 lang_xx.m4 karel_hruby.mc > karel_hruby.??])

define([AUTHOR], [Karel Hrubý])
define([PROJECT_URL],	defn([PROJECT_ROOT_URL])[karel_hruby])

# define counter for diverts
define([BUFFER_IDX], defn([BETA_COUNT_UP]))

# init FIFO counter
BUFFER_IDX(1)

# define indices for buffers
define([JANUARY_NAV],	BUFFER_IDX)
define([FEBRUARY_NAV],	BUFFER_IDX)
define([MARCH_NAV],	BUFFER_IDX)
define([APRIL_NAV],	BUFFER_IDX)
define([MAY_NAV],	BUFFER_IDX)
define([JUNE_NAV],	BUFFER_IDX)
define([JULY_NAV],	BUFFER_IDX)
define([AUGUST_NAV],	BUFFER_IDX)
define([SEPTEMBER_NAV],	BUFFER_IDX)
define([OCTOBER_NAV],	BUFFER_IDX)
define([NOVEMBER_NAV],	BUFFER_IDX)
define([DECEMBER_NAV],	BUFFER_IDX)

define([END_OF_MONTHS],	BUFFER_IDX)

define([SPRING_NAV],	BUFFER_IDX)
define([SUMMER_NAV],	BUFFER_IDX)
define([AUTUMN_NAV],	BUFFER_IDX)
define([WINTER_NAV],	BUFFER_IDX)

define([END_OF_SEASONS],	BUFFER_IDX)

define([FARM_NAV],	BUFFER_IDX)

define([SOMETHING_BETWEEN_NAV_AND_ARTICLE],	BUFFER_IDX)

define([JANUARY_ABC],	BUFFER_IDX)
define([JANUARY_SCN],	BUFFER_IDX)
define([FEBRUARY_ABC],	BUFFER_IDX)
define([FEBRUARY_SCN],	BUFFER_IDX)
define([MARCH_ABC],	BUFFER_IDX)
define([MARCH_SCN],	BUFFER_IDX)
define([APRIL_ABC],	BUFFER_IDX)
define([APRIL_SCN],	BUFFER_IDX)
define([MAY_ABC],	BUFFER_IDX)
define([MAY_SCN],	BUFFER_IDX)
define([JUNE_ABC],	BUFFER_IDX)
define([JUNE_SCN],	BUFFER_IDX)
define([JULY_ABC],	BUFFER_IDX)
define([JULY_SCN],	BUFFER_IDX)
define([AUGUST_ABC],	BUFFER_IDX)
define([AUGUST_SCN],	BUFFER_IDX)
define([SEPTEMBER_ABC],	BUFFER_IDX)
define([SEPTEMBER_SCN],	BUFFER_IDX)
define([OCTOBER_ABC],	BUFFER_IDX)
define([OCTOBER_SCN],	BUFFER_IDX)
define([NOVEMBER_ABC],	BUFFER_IDX)
define([NOVEMBER_SCN],	BUFFER_IDX)
define([DECEMBER_ABC],	BUFFER_IDX)
define([DECEMBER_SCN],	BUFFER_IDX)

define([SPRING_ABC],	BUFFER_IDX)
define([SPRING_SCN],	BUFFER_IDX)
define([SUMMER_ABC],	BUFFER_IDX)
define([SUMMER_SCN],	BUFFER_IDX)
define([AUTUMN_ABC],	BUFFER_IDX)
define([AUTUMN_SCN],	BUFFER_IDX)
define([WINTER_ABC],	BUFFER_IDX)
define([WINTER_SCN],	BUFFER_IDX)

define([FARM_ABC],	BUFFER_IDX)
define([FARM_SCN],	BUFFER_IDX)

define([END_OF_HTML_PAGE],	BUFFER_IDX)

# end of indices for buffers

# forget unused macros
undefine(
	[BUFFER_IDX],
	[BUFFER_IDX_COUNTER],
)

# define short codes for items (used in anchors, css, xml, ...)
define([JANUARY_CODE],	[jan])
define([FEBRUARY_CODE],	[feb])
define([MARCH_CODE],	[mar])
define([APRIL_CODE],	[apr])
define([MAY_CODE],	[may])
define([JUNE_CODE],	[jun])
define([JULY_CODE],	[jul])
define([AUGUST_CODE],	[aug])
define([SEPTEMBER_CODE],	[sep])
define([OCTOBER_CODE],	[oct])
define([NOVEMBER_CODE],	[nov])
define([DECEMBER_CODE],	[dec])

define([SPRING_CODE],	[spr])
define([SUMMER_CODE],	[sum])
define([AUTUMN_CODE],	[aut])
define([WINTER_CODE],	[wint])

define([FARM_CODE],	[farm])

# xml wrapping tags
define([SPRING_WRAP],	[season])
define([SUMMER_WRAP],	defn([SPRING_WRAP]))
define([AUTUMN_WRAP],	defn([SPRING_WRAP]))
define([WINTER_WRAP],	defn([SPRING_WRAP]))

define([JANUARY_WRAP],	[month])
define([FEBRUARY_WRAP],	defn([JANUARY_WRAP]))
define([MARCH_WRAP],	defn([JANUARY_WRAP]))
define([APRIL_WRAP],	defn([JANUARY_WRAP]))
define([MAY_WRAP],	defn([JANUARY_WRAP]))
define([JUNE_WRAP],	defn([JANUARY_WRAP]))
define([JULY_WRAP],	defn([JANUARY_WRAP]))
define([AUGUST_WRAP],	defn([JANUARY_WRAP]))
define([SEPTEMBER_WRAP],	defn([JANUARY_WRAP]))
define([OCTOBER_WRAP],	defn([JANUARY_WRAP]))
define([NOVEMBER_WRAP],	defn([JANUARY_WRAP]))
define([DECEMBER_WRAP],	defn([JANUARY_WRAP]))

define([FARM_WRAP],	[farm])
