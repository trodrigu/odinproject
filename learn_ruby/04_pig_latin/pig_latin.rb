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
        if c == "q" && s[n+1] == "u"
          s.slice!(n..n+1)
          # s.slice!(n-1)
          front_consonants << "qu"
          s << front_consonants
          front_consonants = ""
          s = s.downcase
          total = ""
          total << s
          break
        end
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
        if c == "q" && t[1] == "u"
          t.slice!(n..n+1)
          front_consonants << "qu"
          t << front_consonants
          t = t.downcase
          total << " "
          total << t
        end

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
translate("square")
