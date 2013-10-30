class Book

  # attr_accessor :title



  def title=(name)
        @name = name
  end
  
  def title
    
    
    if @name.split(' ').map { |x| x }.length <= 2
      @name.split(' ').map {|each_word| each_word.capitalize }.join(' ')
        else
        lowercase_words = %w{in a an the and but or for nor of over}  #puts words into an array
        array_of_words = @name.split(' ')
        new_array = []
        array_of_words.each_with_index do |word, index|
          if lowercase_words.include?(word) && index > 0
            new_array << word
          else
            new_array << word.capitalize
          end
        end
        translated_string = new_array.join(" ")
      end
    end
end
  
# def title(string)
#   # your code here
# end

  # def title=(title.capitalize)
  #   @title 
  # end

# def title
#   @title



