# E.g. "You've tasted a whole worm" instead of "You've wasted a whole term", or "A shoving leopard" instead of "A loving shepherd".
#
# Your task is to write a method that accepts a sentence as an argument, randomly picks two words from that sentence, swaps the first letters, of those two words and returns the resulting sentence (be prepared for your sentences to be more nonsensical than the above examples).
#
# Bonus points for skipping small words such as "the", "and", "a", "to", etc (these are called "stop words").

def spooner(sentence)

  words_array = sentence.split(" ")

  not_stop_words = words_array.select {|each_word| each_word.length > 3 }

  random_two = not_stop_words.sample(2)
  index_of_first_word = words_array.index(random_two[0])
  index_of_second_word = words_array.index(random_two[1])

  swapped_words = first_letter_swap(random_two)

  words_array[index_of_first_word] = swapped_words[0]
  words_array[index_of_second_word] = swapped_words[1]
  words_array.join(" ")

end

def first_letter_swap(two_word_array)

  i = two_word_array[0].index(/[aeiou]/)

  j = two_word_array[1].index(/[aeiou]/)

  old_first = two_word_array[0]
  old_second = two_word_array[1]

  new_first_word = old_second[0...j] + old_first[i..-1]
  new_second_word = old_first[0...i] + old_second[j..-1]

  [new_first_word.downcase, new_second_word.downcase]

end

p spooner("You've wasted a whole term")
