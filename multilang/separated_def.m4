__HEADER([Josef Kubin], [2018/10/19], [multilang])
___DESCR([])
___POINT([])
___USAGE([m4 -R multilang.m4f separated_def.m4 ...])

# define a counter for diverts
define([BUFFER_IDX],	defn([BETA_COUNT_UP]))

# init counter
BUFFER_IDX(1)

define([ERROR_MSG],	BUFFER_IDX)
define([INFO_MSG],	BUFFER_IDX)
# define([QUERY2_MSG],	BUFFER_IDX)
define([WARNING_MSG],	BUFFER_IDX)

define([ERROR_LEN],	[40])
define([INFO_LEN],	[50])
define([QUERY2_LEN],	[50])
define([WARNING_LEN],	[60])

define([ERROR_RULER],	/*RULER(ERROR_LEN)*/)
define([INFO_RULER],	/*RULER(INFO_LEN)*/)
define([QUERY2_RULER],	/*RULER(QUERY2_LEN)*/)
define([WARNING_RULER],	/*RULER(WARNING_LEN)*/)

# remove counter
undefine([BUFFER_IDX])
