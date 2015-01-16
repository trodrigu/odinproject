/* Find the largest prime factor of 600851475143
  * if statement to continue to factor until modulo not equal to 0
  * if % 2 != 0 then 
*/
// load('biginteger.js');
// n = BigInteger(1000);
// n = 2890;
// array = [];
// prime = [];
// factor = [];
// answer = [];
// for (var i = 0; i <= n; i++) {
//   array.push(i);
// }

// Create prime array from number n
// for (var i = 1; i < array.length - 1; i++) {
//   if (array[i] % 2 != 0 && array[i] % 3 != 0) {
//     prime.push(array[i]);
//   }
// }

// Create factor array from prime array
// for (var j = prime.length-1; j > 0; j--) {
//   if (n % prime[j] == 0) {
//     factor.push(prime[j]);
//   }
// }
// debug(factor);

/* Approach 2
  Fermat's
  A^2 - N = B^2
  - first try square root and round up
  - if difference is not a perfect square increment up
  - input N
  - calculate square root of N
  - round N up for A
  - check if difference between A^2 and N is a perfect square B
  - if not increment A by 1 until B is a perfect square
*/
function isInt(n) {
  return n % 1 === 0;
}
N = 5959;
A_0 = Math.sqrt(N);
A = Math.ceil(A_0);
B = Math.sqrt((Math.pow(A, 2) - N));
while (!isInt(B)) {
  var n = 0;
  n++;
  A++;
  B = Math.sqrt((Math.pow(A, 2) - N));
  }
f1 = A - B;
f2 = A + B;
debug('The factors are ' + f1 + ' and ' + f2 + '.');


