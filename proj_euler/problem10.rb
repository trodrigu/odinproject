require 'Prime'
arr = []
Prime.each(2000000) do |p|
	arr << p
end
p arr.inject { |sum, e| sum + e }
