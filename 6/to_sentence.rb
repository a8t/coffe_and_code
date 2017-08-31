def to_sentence(words_array)

  string = words_array[0..-2].join(", ")

  string = (words_array.length == 1 ? words_array[0] : string += " and #{words_array[-1]}")

  return string
end

p to_sentence(%w(cow chicken sheep))           # returns 'cow, chicken and sheep'
p to_sentence(%w(circle square triangle line)) # returns 'circle, square, triangle and line'
p to_sentence(%w(Alice Bob))                   # returns 'Alice and Bob'
p to_sentence(%w(sword))                   # returns 'sword'
