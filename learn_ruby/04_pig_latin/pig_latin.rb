# If word starts with a vowel slap an "-ay" on the end
# If word starts with a consonant, move the consonant to the end and then slap an "-ay" on the end
def translate(word)
  # Check for multiple words
  x = word.split
    s = x[0]

    # Check for multiple consonants in beginning
    n = 0
    c = s[0]
    front_consonants = ""
    while c != "a" && c != "e" && c != "i" && c != "o" && c != "u"
      front_consonants << c
      n += 1
      c = s[n]
    end
    if n >= 1
      s.slice!(0..n-1)
    end
    s << front_consonants
    s << "ay"
    s = s.downcase
    total = ""
    total << s

    if x.length > 1
      t = x[1]
      # Check for multiple consonants in beginning
      n = 0
      c = t[0]
      front_consonants = ""
      while c != "a" && c != "e" && c != "i" && c != "o" && c != "u"
        front_consonants << c
        n += 1
        c = t[n]
      end
      if n >= 1
        t.slice!(0..n-1)
      end
      t << front_consonants
      t << "ay"
      t = t.downcase
      total << " "
      total << t
    end
  total
end
