/* Find the sum of the even numbered values in the Fibonacci sequence up to 4 * 10^6
  * Generate Fibonacci up to a value 4 * 10^6
  * if statement for sorting even numbers
  F_0 = 0
  F_1 = 1
  F_n = F_n-1 + F_n-2
  x + y = z
*/

// Use biginteger library to sum up even numbers
load('biginteger.js')
x = 0;
y = 1;
var z;
var sum;
fib = [0,1];
for (var i = 0; i < 15; i++) {
	z = x + y;
	fib.push(z);
	debug(z)
	x = y;
	y = z;
}
for (var i = 0; i < fib.length; i++) {
	if (fib[i] % 2 == 0) {
		sum = BigInteger.add(sum, fib[i]);
		debug(fib[i]);
	}
}
debug(sum);
