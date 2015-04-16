1.upto(500) do |c|
  1.upto(c) do |b|
    1.upto(b) do |a|
    	puts a * b * c if a * a + b * b == c * c && a + b + c == 1000
    end
  end
end
