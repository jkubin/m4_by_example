__HEADER([Josef Kubin], [2018/10/18], [multilang])
___DESCR([common definition])
___POINT([script decomposition])

# define counters for output buffers
define([LANG_BUFFER],	defn([BETA_COUNT_UP]))
define([MSG_BUFFER],	defn([BETA_COUNT_UP]))

# init counters
LANG_BUFFER(1)

# 9 languages * 3 message types = 27
# 100 is enough space
MSG_BUFFER(100)
