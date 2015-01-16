/* Find the largest prime factor of 600851475143
  Fermat's factorization method
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

N = 600851475143;

function factor(N) {
  A_0 = Math.sqrt(N);
  A = Math.ceil(A_0);
  B = Math.sqrt((Math.pow(A, 2) - N));
  while (!isInt(B)) {
    A++;
    B = Math.sqrt((Math.pow(A, 2) - N));
  }
f1 = A - B;
f2 = A + B;
debug('The factors of ' + N + ' are ' + f1 + ' and ' + f2 + '.');
}
factor(N);
X = f1
Y = f2
factor(X);
M = f1
N = f2
factor(Y);
R = f1
S = f2

// Find greatest prime factor
answer = Math.max(M, N, R, S);
print('The greatest prime factor is ' + answer)
