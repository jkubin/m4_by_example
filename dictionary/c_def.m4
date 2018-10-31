__HEADER([Josef Kubin], [2018/10/24], [dictionary])
__THANKS([])
___DESCR([])
___POINT([])
___USAGE([m4 common.m4 dict.m4 c_def.m4 ...])

# define buffer counters
define([BUFFER_FOR_KEY],	defn([BETA_COUNT_UP]))
define([BUFFER_FOR_VAL],	defn([BETA_COUNT_UP]))
define([BUFFER_FOR_PTR],	defn([BETA_COUNT_UP]))

# init buffer counters
BUFFER_FOR_KEY(1)
BUFFER_FOR_VAL(50)

# 34 indices
# 100 is enough space for both
BUFFER_FOR_PTR(100)
