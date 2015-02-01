def echo(words)
  "#{words}"
end

def shout(words)
  x = "#{words}".upcase
  x
end

def repeat(words, n = 1)
  stuff = "#{words}"
  if n > 1
    x = n - 1
    x.times do
      stuff << " #{words}"
    end
  else
    n.times do
      stuff << " #{words}"
    end
  end
  stuff
end
