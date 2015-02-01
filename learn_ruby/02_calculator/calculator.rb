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

