def translate(input)
   array = input.split

  if input.include?(" ")
      array.map! do |x|
      single_word_translator(x)
      end
      array.join(' ')
    else
      single_word_translator(input)
  end
end

def single_word_translator(word)
    ay = "ay"
    first_vowel = /[Aa]|[Ee]|[Ii]|[Oo]/ =~ word[0]
    second_vowel = /[Aa]|[Ee]|[Ii]|[Oo]/ =~ word[1]
    third_vowel = /[Aa]|[Ee]|[Ii]|[Oo]/ =~ word[2]
    #qu = /[QU]|[qu]|[Qu]|[qU]/ =~ word
    # first_consonant = /[B-Db-d]|[F-Hf-h]|[J-Nj-n]|[P-Tp-t]|[W-Zw-z]/ =~ word[0]
    # second_consonant = /[B-Db-d]|[F-Hf-h]|[J-Nj-n]|[P-Tp-t]|[W-Zw-z]/ =~ word[1]
      if first_vowel == 0  
          word + ay 
        elsif first_vowel != 0 && second_vowel == 0
          word[1..-1] + word[0] + ay  
        elsif first_vowel != 0 && second_vowel != 0 && third_vowel == 0
          word[2..-1] + word[0..1] + ay  
        elsif first_vowel != 0 && second_vowel != 0 && third_vowel != 0
          word[3..-1] + word[0..2] + ay
      end
end


# puts translate("")
# def translate_array(word_array)
# word_array.each_with_index
# end
