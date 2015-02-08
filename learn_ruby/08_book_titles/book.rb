class Book
  attr_reader :title

  def title=(str)
    # separated = str.strip
    separated = str.split
    # @title = @title.capitalize
    capitalized_words = separated.each { |c| c.capitalize! }
    @title = capitalized_words.join(" ")
    puts @title
  end

end
