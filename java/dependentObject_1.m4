divert(-1)changequote([,])

__HEADER([Josef Kubin], [2018/10/27], [java])
__THANKS([https://docstore.mik.ua/orelly/xml/jxslt/ch08_05.htm])
___DESCR([generating the source code with two different paradigms])
___POINT([XSLT versus M4 (version 1)])
___USAGE([m4 dependentObject_1.m4 Address_DO.mc > Address_M4_1.java])

# A → β
define([COMMON], [
	divert(1)dnl
	private $2 $1;
divert(3)dnl
		this.$1 = $1;
divert(4)
	public $2 $3() {
		return this.$1;
	}dnl
divert(-1)
])

# β rule
define([FIRST], [
	COMMON($@)
	divert(2)dnl
$2 $1[]divert(-1)

	define([$0], defn([NEXT]))
])

# β rule
define([NEXT], [
	COMMON($@)
	divert(2)dnl
, $2 $1[]divert(-1)
])

#      _______      ______
# --->/ FIRST \--->/ NEXT \----,
#     \_______/    \______/<---'

# A → β
define([DEPENDENT_OBJECT], [
	# A → β
	define([PROPERTY], defn([FIRST]))
	define([NAME], [$1])
])

m4wrap([
	divert(0)dnl
public class NAME implements java.io.Serializable {
undivert(1)
	/**
	 * Construct a new dependent object instance.
	 */
	public NAME[](undivert(2)) {
undivert(3)dnl
	}
undivert(4)
}
])
