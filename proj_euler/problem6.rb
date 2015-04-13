# Sum of the squares of the first ten natural numbers
array_1 = (1..100).map { |x| x**2 }.reduce(:+)
array_2 = (1..100).reduce(:+)**2
p array_2 - array_1
