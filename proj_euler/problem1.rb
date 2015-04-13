# Find the sum of all the multiples of 3 or 5 below 1000
# - create array of 1 thru 1000
# - if modulo 3, 5 is equal to 0 add to variable n 
sum = 0
for i in 0..999
  if i % 3 == 0
    sum += i
  elsif i % 5 == 0
    sum += i
  end
end
print sum
