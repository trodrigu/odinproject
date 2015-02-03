# If word starts with a vowel slap an "-ay" on the end
# If word starts with a consonant, move the consonant to the end and then slap an "-ay" on the end
def translate(word)
  s = word
  # Check for multiple consonants in beginning
  n = 0
  c = s[0]
  front_consonants = ""
  while c != "a" && c != "e" && c != "i" && c != "o" && c != "u"
    front_consonants << c
    # s.slice!(n)
    n += 1
    c = s[n]
  end
  s << front_consonants
  puts front_consonants
  # consonant test
  # if s[0] != "a" && s[0] != "e" && s[0] != "i" && s[0] != "o" && s[0] != "u"
  #   r = s.slice(0)
  #   s << r
  #   s.slice!(0)
  # end

  s << "ay"
  s = s.downcase
  puts s
end

translate("cherry")
