divert(-1)changequote([,])

__HEADER([Josef Kubin], [2018/10/27], [java])
___DESCR([define diverts])
___POINT([common definitions in separated file])
___USAGE([m4 java_def.m4 ...])

# β rule
define([BETA_COUNT_UP], [dnl
	define([$0_COUNTER], $1)dnl
	define([$0], [$0_COUNTER[]define([$0_COUNTER], incr($0_COUNTER))])dnl
])

# define counter for diverts
# A → β
define([FIFO_IDX], defn([BETA_COUNT_UP]))

# init counter to help with indices
FIFO_IDX(1)

define([PUBLIC_CLASS],       FIFO_IDX)
define([PRIVATE_ATTRIB],     FIFO_IDX)
define([CONSTUCT_A_NEW_OBJ], FIFO_IDX)
define([PUBLIC_ARGUMENTS],   FIFO_IDX)
define([AFTER_PUBLIC_ARGS],  FIFO_IDX)
define([CONSTRUCTOR],        FIFO_IDX)
define([END_OF_CONSTRUCTOR], FIFO_IDX)
define([OBJECT_GETTERS],     FIFO_IDX)
define([OBJECT_SETTERS],     FIFO_IDX)
define([FINISH],             FIFO_IDX)

# forget unused macros
undefine(
	[FIFO_IDX],
	[FIFO_IDX_COUNTER],
)
