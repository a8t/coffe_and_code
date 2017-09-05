# apple => appleay
#  => ananabay
#  => awberrystray
#  => uietqay
#  => eatay iepay
#

def pig(string)

  words_array = string.split(" ")
  pigged_words = []

  words_array.each do |each_word|
    i = each_word.index(/[aeiou]/)

    new_word = each_word[i..-1] + each_word[0...i] + "ay"

    pigged_words << new_word

  end

  pigged_words
  
end

puts pig("apple")
puts pig("banana")
puts pig("strawberry")
puts pig("quiet")
p pig("eat pie")
