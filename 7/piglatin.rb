def pig(string)

  words_array = string.split(" ")

  words_array.map do |each_word|
    i = each_word.index(/[aeiou]/)
    new_word = each_word[i..-1] + each_word[0...i] + "ay"
  end

end

puts pig("apple")
puts pig("banana")
puts pig("strawberry")
puts pig("quiet")
p pig("eat pie")
