divert(-1)changequote([,])

__HEADER([Josef Kubin], [2018/10/27], [java])
__THANKS([https://docstore.mik.ua/orelly/xml/jxslt/ch08_05.htm])
___DESCR([generating the source code with two different paradigms])
___POINT([XSLT versus M4 (version 2)])
___USAGE([m4 dependentObject_2.m4 Address_DO.mc > Address_M4_2.java])

define([PUBLIC_CLASS],       1)
define([PRIVATE_ATTRIB],     2)
define([CONSTUCT_A_NEW_OBJ], 3)
define([PUBLIC_ARGUMENTS],   4)
define([AFTER_PUBLIC_ARGS],  5)
define([CONSTRUCTOR],        6)
define([END_OF_CONSTRUCTOR], 7)
define([OBJECT_GETTERS],     8)
define([FINISH],             9)

# A → β
define([COMMON], [
	divert(PRIVATE_ATTRIB)dnl
	private $2 $1;
divert(CONSTRUCTOR)dnl
		this.$1 = $1;
divert(OBJECT_GETTERS)
	public $2 $3() {
		return this.$1;
	}dnl
divert(-1)
])

# β rule
define([FIRST], [
	COMMON($@)
	divert(PUBLIC_ARGUMENTS)dnl
$2 $1[]divert(-1)

	# PROPERTY ---> NEXT
	# A → β
	define([$0], defn([NEXT]))
])

# β rule
define([NEXT], [
	COMMON($@)
	divert(PUBLIC_ARGUMENTS)dnl
, $2 $1[]divert(-1)
])

# A → β
define([DEPENDENT_OBJECT], [

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

	# PROPERTY ---> FIRST
	# A → β
	define([PROPERTY], defn([FIRST]))

	# undefine DEPENDENT_OBJECT rule
	undefine([$0])
])
