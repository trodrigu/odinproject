def add(x, y)
  total = x + y
end

def subtract(x, y)
  diff = x - y
end

def sum(x)
  sum = 0
  x.each { |i| sum += i }
  sum
end

def multiply(*args)
  product = 1
  for i in 0..args.length-1 do
    product *= args[i]
  end
  product
end

def power(x, y)
  exp = x**y
  exp
end

def factorial(n)
  facsum = 1
  if n == 0
    facsum = 1
  end
  while n > 1
    facsum *= n
    n -= 1
  end
  facsum
end
