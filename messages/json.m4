divert(-1)changequote([,])

__HEADER([Josef Kubin], [2018/06/19], [messages])
___DESCR([messages to JSON])
___POINT([state machine for comma; how to print unpaired quotation mark])
___USAGE([m4 json.m4 messages_json.mc > messages.json])

#                              _______
#                             |      /
#      ___________       _____V_____/
# --->/ INIT_NODE \---->/ ITEM_NODE \
#     \___________/     \___________/
#

# β rule
define([INIT_NODE], [

	# print left unpaired bracket (WOW!) and first record to stdout
	divert(0)changequote`'format(`%c', 91)changequote([,])[[$1, "$2"]]divert(-1)

	# change node in state machine
	define([ERROR], defn([ITEM_NODE]))
	define([QUERY], defn([ITEM_NODE]))
	define([WARNING], defn([ITEM_NODE]))
])

# A → β
define([ERROR], defn([INIT_NODE]))
define([QUERY], defn([INIT_NODE]))
define([WARNING], defn([INIT_NODE]))

# append comma and wait for next record
# β rule
define([ITEM_NODE], [
	divert(0),
[[$1, "$2"]]divert(-1)
])

m4wrap([
	# print right unpaired bracket to stdout to finish JSON records
	divert(0)changequote`'format(`%c', 93)changequote([,])
])
