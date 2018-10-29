divert(-1)changequote([,])

__HEADER([Josef Kubin], [2018/10/27], [java])
__THANKS([https://docstore.mik.ua/orelly/xml/jxslt/ch08_05.htm])
___DESCR([generating the source code with two different paradigms])
___POINT([XSLT versus M4 (version 1)])
___USAGE([m4 dependentObject_1.m4 AddressDO.mc > Address_M4_1.java])

# A rule
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

# A rule
# A → β
define([DEPENDENT_OBJECT], [
	# A → β
	define([PROPERTY], defn([FIRST]))
	define([$0], [$1])
])

m4wrap([
	divert(0)dnl
public class DEPENDENT_OBJECT implements java.io.Serializable {
undivert(1)
	/**
	 * Construct a new dependent object instance.
	 */
	public DEPENDENT_OBJECT[](undivert(2)) {
undivert(3)dnl
	}
undivert(4)
}
])
