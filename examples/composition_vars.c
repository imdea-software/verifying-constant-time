/*

Throughout we will consider all pointers passed to
and returned from functions are public. Distinctions
can only be made for the contents of pointed to
memory regions. We also only consider one level of
indirection.

These assumptions may be removable later on.

For every function, parameters must be tagged as to their
security level when operating as inputs and possibly as
outputs. The function output must always be tagged for
security.

Security levels are the following.

For inputs:
- public - function requires (assumes) these to be equal.
           needs assertion before call
- private - no requirement (allowed to vary freely)

For outputs (both parameters passed by refence and return values):
- public - function ensures these are equal
           can be used on left-hand side of implications everywhere
- private - no guarantee (assumed to be able to vary freely)
- declassified - we will only analyse executions in which these
                 possibly private values are fixed.
                 needs assertion on return

All ensure clauses will be moved to the end and
asserted as implications. Low inputs and declassified outputs
being fixed must imply that low outputs are fixed, that
all branching conditions are fixed, and that all addresses
are fixed.

*/

#define CRYPTO_FUNCTION(x) __SMACK_code("assume {:crypto_function \"@\"} true;",x)
#define PRIVATE_INPUT(x) __SMACK_code("assume {:private_input \"@\"} true;",x)
#define PRIVATE_OUTPUT(x) __SMACK_code("assume {:private_output \"@\"} true;",x)
#define PUBLIC_INPUT(x) __SMACK_code("assume {:public_input \"@\"} true;",x)
#define PUBLIC_OUTPUT(x) __SMACK_code("assume {:public_output \"@\"} true;",x)
#define DECLASSIFIED_OUTPUT(x) __SMACK_code("assume {:declassified_output \"@\"} true;",x)

// out -> privin -> privout
// in -> privin -> privout
// res -> decout
int sort2(int *out2, int *in2) {
	CRYPTO_FUNCTION(sort2);
	PRIVATE_INPUT(out2);
	PRIVATE_OUTPUT(out2);
	PRIVATE_INPUT(in2);
	PRIVATE_OUTPUT(in2);

	int a, b;
	a = in2[0];
	b = in2[1];
	if (a < b) {
		out2[0] = in2[0];
		out2[1] = in2[1];
	}
	else {
		out2[0] = in2[1];
		out2[1] = in2[0];
	}
	return (a < b);
}

// out -> privin -> privout
// in -> privin -> privout
// conds -> privin -> decout
void sort3(int *conds, int *out3, int *in3) {
	CRYPTO_FUNCTION(sort3);
	PRIVATE_INPUT(conds);
	PUBLIC_OUTPUT(conds);
	PRIVATE_INPUT(out3);
	PRIVATE_OUTPUT(out3);
	PRIVATE_INPUT(in3);
	PRIVATE_OUTPUT(in3);

	conds[0] = sort2(out3,in3);
	in3[1] = out3[1];
	conds[1] = sort2(out3+1,in3+1);
	in3[0] = out3[0];
	in3[1] = out3[1];
	conds[2] = sort2(out3,in3);
}

int main(void) {
  int T0[1];
  int in[3];
  int out[3];
  sort3(T0,out,in);
}
