 # Find the largest prime factor of 600851475143
 #  Fermat's factorization method
 #  A^2 - N = B^2
 #  - first try square root and round up
 #  - if difference is not a perfect square increment up
 #  - input N
 #  - calculate square root of N
 #  - round N up for A
 #  - check if difference between A^2 and N is a perfect square B
 #  - if not increment A by 1 until B is a perfect square

def factor(n)
  count = 0
  n_sqrt = Math.sqrt(n)
  a = n_sqrt.ceil.to_i
  b = Math.sqrt((a**2 - n))
  while true
    a += 1
      b = Math.sqrt(a**2 - n)
    if b - b.floor == 0
      factor_one = (a - b)
      factor_two = (a + b)
           end
        if count > 100000
      break
    end
  count += 1
  end
puts "The factors of #{n} are #{factor_one} and #{factor_two}."
$factor_one = factor_one
$factor_two = factor_two
end
N=600851475143
factor(N)
M = $factor_one
L = $factor_two
factor(M)
X = $factor_one
Y = $factor_two
factor(L)
R = $factor_one
S = $factor_two
max = [X, Y, R, S].max
puts "The max is #{max}."