def echo(a)
  a
end

def shout(a)
  a.upcase
end


def repeat(string, n = 1)
  if n==1
    (string + " " + string)
  else
    repeater = (string + " ") * n 
    repeater.chop!
  end
 end

  def start_of_word(string, n = 1)
    string[0,n]
  end

  def first_word(string)
    test = string.split(' ')
    test.first
  end

  def titleize(string)
    if string.split(' ').map { |x| x }.length <= 2
      string.split(' ').map {|each_word| each_word.capitalize }.join(' ')
    else
      lowercase_words = %w{a an the and but or for nor of over}  #puts words into an array
      array_of_words = string.split(' ')
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
    
#string.split.each_with_index.map{|x, index| lowercase_words.include?(x) && index > 0 ? x : x.capitalize }.join(" ")  
#lowercase_words.include?(x) && index > 0 ? x : x.capitalize 
#this_boolean_condition ? true_condition : false_condition # Ternary operators