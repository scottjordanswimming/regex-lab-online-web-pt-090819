require 'pry'

def starts_with_a_vowel?(word)
  
x = word[0]
y = x.scan(/[aeiouAEIOU]/).join()
x == y 

end

def words_starting_with_un_and_ending_with_ing(text)
  x = []
  x << text.scan(/\w+un/).uniq
  
  x << text.scan(/\w+ing/).uniq
  #binding.pry
x.flatten
end

def words_five_letters_long(text)
  arr = []
  x = text.split(" ")
  x.each do |word|
    if word.length == 5
      arr << word
    end
  end
  arr
#binding.pry
      

end

def first_word_capitalized_and_ends_with_punctuation?(text)
x = text[0]
y = text[-1]
z = x.scan(/[A-Z]/)
a = y.scan(/[,.?!]/)

#binding.pry

z != [] && a != []


end

def valid_phone_number?(phone)
  
  a = [')', '(', ' ', '-']
  #binding.pry
    y = phone.split(Regexp.union(a)).uniq
    z = y.join()
    binding.pry
    z.length == 10
    
    
  
end
