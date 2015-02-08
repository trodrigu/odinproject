class Book
  attr_reader :title

  def title=(str)
    separated = str.split
    capitalized_words = separated.each { |c| c.capitalize! }
    # capitalized_words = ""
    # for i in 0..separated.length-1 do
    #     capitalized_words << separated[i].capitalize
    #     puts capitalized_words
        # puts separated[i]
    #   if i != "and"
      # end
    # end
    @title = capitalized_words.join(" ")
    # check sort

    puts @title
  end

end
