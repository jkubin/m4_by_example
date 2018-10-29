/*
 * 2018/09/22 Josef Kubin
 *
 * an automaton in C
 *         _____________________
 *        |                     |
 *       _V_        ___        _|_
 *  --->/ A \----->/ B \----->/ C \
 *      \___/      \___/      \___/
 */

static int A(int (** node)());

static int C(int (** node)())
{
	// if (...)
	*node = A;

	return 0;
}

static int B(int (** node)())
{
	// if (...)
	*node = C;

	return 0;
}

static int A(int (** node)())
{
	// if (...)
	*node = B;

	return 0;
}

int main(void)
{
	int (* atm)(int (**)()) = A;
	int retv;

	while (!(retv = atm(&atm)));

	// printf("%s\n", message[language][retv - 1]);

	if (atm == A)
		return -1;

	if (atm == B)
		return -2;

	if (atm == C)
		return -3;

	return 0;
}
