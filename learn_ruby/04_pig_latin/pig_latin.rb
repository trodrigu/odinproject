# If word starts with a vowel slap an "-ay" on the end
# If word starts with a consonant, move the consonant to the end and then slap an "-ay" on the end
def translate(word)
  # Check for multiple words
  x = word.split
    s = x[0]

    # Check for multiple consonants in beginning
    # n = 0
    # c = s[0]
    # front_consonants = ""
    # while c != "a" && c != "e" && c != "i" && c != "o" && c != "u"
    #     if c == "q" && s[n+1] == "u"
    #       s.slice!(n..n+1)
    #       # s.slice!(n-1)
    #       front_consonants << "qu"
    #       s << front_consonants
    #       front_consonants = ""
    #       s = s.downcase
    #       total = ""
    #       total << s
    #       break
    #     end
    #   front_consonants << c
    #   n += 1
    #   c = s[n]
    # end
    # if n >= 1
    #   s.slice!(0..n-1)
    # end
    # s << front_consonants
    # s << "ay"
    # s = s.downcase
    # total = ""
    # total << s
    total=""
    mult_consonants(s, total)


    if x.length > 1
      t = x[1]
      total << " "
      mult_consonants(t, total)
    end

    # if x.length > 2
    #   u = x[2]
    #   mult_consonants(u, total)
    # end

    # if x.length > 3
    #   v = x[3]
    #   mult_consonants(v, total)
    # end
  total
end

def mult_consonants(t, total)
  # Check for multiple consonants in beginning
  n = 0
  c = t[0]
  front_consonants = ""
  qu_constant = 0
  while c != "a" && c != "e" && c != "i" && c != "o" && c != "u"
    if c == "q" && t[1] == "u"
      t.slice!(n..n+1)
      front_consonants << "quay"
      t << front_consonants
      t = t.downcase
      total << t
      n += 1
      c = t[n]
      qu_constant = 1
    else
      # front_consonants = ""
      front_consonants << c
      n += 1
      c = t[n]
    end
  end
  if n >= 1
    t.slice!(0..n-1)
  end
  t << front_consonants
  t << "ay"
  t = t.downcase
  if qu_constant < 1
    total << t
  end
end

# translate("the quick brown fox")
translate("square")
