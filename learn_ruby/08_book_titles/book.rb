class Book
  attr_reader :title

  def title=(str)
    separated = str.split
    capitalized_words = []
    for i in 0..separated.length-1 do
        if i < 1
          capitalized_words << separated[i].capitalize
        end
        if i > 0
          if separated[i] != "and" && separated[i] != "in" && separated[i] != "of" && separated[i] != "the" && separated[i] != "a" && separated[i] != "an"
            capitalized_words << separated[i].capitalize
          else
            capitalized_words << separated[i]
          end
        end
    end
    @title = capitalized_words.join(" ")
  end

end
