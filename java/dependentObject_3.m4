__HEADER([Josef Kubin], [2018/10/27], [java])
__THANKS([https://docstore.mik.ua/orelly/xml/jxslt/ch08_05.htm])
___DESCR([generating the source code with two different paradigms])
___POINT([XSLT versus M4 (version 3)])
___USAGE([m4 java.m4 dependentObject_3.m4 java.mc > Address_M4_3.java])

# A → β
define([SET_ATTRIBUTES_AND_METHODS], [
	divert(PRIVATE_ATTRIB)dnl
	private $2 $1;
divert(CONSTRUCTOR)dnl
		this.$1 = $1;
divert(OBJECT_GETTERS)
	public $2 $3() {
		return this.$1;
	}dnl
divert(-1)
	ifelse([$4], [], [], [
divert(OBJECT_SETTERS)
	public void $4($2 $1) {
		this.$1 = $1;
	}dnl
divert(-1)
	])
])

# β rule
define([FIRST], [
	SET_ATTRIBUTES_AND_METHODS($@)
	divert(PUBLIC_ARGUMENTS)dnl
$2 $1[]divert(-1)

	# A → β
	# define([PROPERTY], defn([NEXT]))
	define([$0], defn([NEXT]))
])

# β rule
define([NEXT], [
	SET_ATTRIBUTES_AND_METHODS($@)
	divert(PUBLIC_ARGUMENTS)dnl
, $2 $1[]divert(-1)
])

# β rule
define([CREATE_NEW_DEPENDENT_OBJ], [

	# create skeleton of new data, fill several FIFO-s
	divert(PUBLIC_CLASS)dnl
public class $1 implements java.io.Serializable {
divert(CONSTUCT_A_NEW_OBJ)
	/**
	 * Construct a new dependent object instance.
	 */
	public $1(divert(AFTER_PUBLIC_ARGS)) {
divert(END_OF_CONSTRUCTOR)dnl
	}
divert(FINISH)
}
divert(-1)

	# A → β
	define([PROPERTY], defn([FIRST]))
])

# β rule
define([FIRST_DEPENDENT_OBJ], defn([CREATE_NEW_DEPENDENT_OBJ])[

	# A → β
	# define([DEPENDENT_OBJECT], defn([NEXT_DEPENDENT_OBJ]))
	define([$0], defn([NEXT_DEPENDENT_OBJ]))
])

# β rule
define([NEXT_DEPENDENT_OBJ], [
	# send prepared data to stdout (see undivert)
	divert(0)dnl
undivert
divert(-1)
]defn([CREATE_NEW_DEPENDENT_OBJ]))

# A → β
define([DEPENDENT_OBJECT], defn([FIRST_DEPENDENT_OBJ]))
