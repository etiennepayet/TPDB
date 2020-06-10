/*
 * Program used in the experimental evaluation of the following paper.
 * 2010SAS - Alias,Darte,Feautrier,Gonnord, Multi-dimensional Rankings, Program Termination, and Complexity Bounds of Flowchart Programs
 *
 * Date: 2014
 * Author: Caterina Urban
 */

typedef enum {false, true} bool;

extern int __VERIFIER_nondet_int(void);

int main() {
    int x, y, n;
	n = __VERIFIER_nondet_int();
	x = __VERIFIER_nondet_int();
	y = __VERIFIER_nondet_int();
	while (x >= 0) {
		while (y >= 0 && __VERIFIER_nondet_int() != 0) {
			y = y - 1;
        }
		x = x - 1;
		while (y <= n && __VERIFIER_nondet_int() != 0) {
			y = y + 1;
        }
	}
	return 0;
}
