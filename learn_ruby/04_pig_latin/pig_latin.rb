# If word starts with a vowel slap an "-ay" on the end
# If word starts with a consonant, move the consonant to the end and then slap an "-ay" on the end
def translate(word)
  # Check for multiple words
  x = word.split
    s = x[0]
    total=""
    mult_consonants(s, total)

    if x.length > 1
      y = x[1]
      total << " "
      mult_consonants(y, total)
    end

    if x.length > 2
      total << " "
      u = x[2]
      mult_consonants(u, total)
    end

    if x.length > 3
      total << " "
      v = x[3]
      mult_consonants(v, total)
    end
  total
end

def mult_consonants(t, total)
  # Check for multiple consonants in beginning
  letter_count = 0
  c = t[0]
  front_consonants = ""
  qu_constant = 0
  while c != "a" && c != "e" && c != "i" && c != "o" && c != "u"
    if c == "q" && t[letter_count+1] == "u"
      t.slice!(0..letter_count+1)
      front_consonants << "quay"
      t << front_consonants
      total << t
      t = "foobar"  # I'm so confused why setting this to a random string works...
      letter_count += 1
      c = t[letter_count]
      qu_constant = 1
    else
      front_consonants << c
      letter_count += 1
      c = t[letter_count]
    end
  end
  if letter_count >= 1
    t.slice!(0..letter_count-1)
  end
  t << front_consonants
  t << "ay"
  if qu_constant < 1
    total << t
  end
end
