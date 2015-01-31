 # Find the sum of the even numbered values in the Fibonacci sequence up to 4 * 10^6
 #  * Generate Fibonacci up to a value 4 * 10^6
 #  * if statement for sorting even numbers
 #  F_0 = 0
 #  F_1 = 1
 #  F_n = F_n-1 + F_n-2
 #  x + y = z
x = 0
y = 1
z = 0
fib = [0, 1]
sum = 0
sumarr = 0
for i in 0..15
  z = y + x
  fib << z
  x = y
  y = z
end

fib.each { |i| sumarr += i if i % 2 == 0 }
print sumarr, "\n"
print fib
