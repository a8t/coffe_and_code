# A Narcissistic Number is a number where the sum of its own digits, each raised to the power of the number of digits, IS the number itself. (because it looks at itself a lot, ya dig?)
#
# For example, take 153 (3 digits): 1^3 + 5^3 + 3^3 = 1 + 125 + 27 = 153
#
# and 1634 (4 digits): 1^4 + 6^4 + 3^4 + 4^4 = 1 + 1296 + 81 + 256 = 1634
#
# The Challenge: Your function must return true or false depending upon whether the given number is a Narcissistic number. You can assume that your function will only be passed valid integers, so no input or error-checking is required.
#
# Hints
#
# # The "to the power of" operator in ruby is two asterisks, so
# 3 ** 4 = 81
# # An easy way to split an integer into digits is to make it a string first... Then maybe you could 'split' it?
# 1634.to_s...
# def narcissistic(number)
#   # your code here!
# end
#
# #example usage
# narcissistic(153)  #true
# narcissistic(1634) # true
# narcissistic(1635) # false


def narcissistic(number)

  digit_array = num_to_arr_of_digits(number)

  digit_count = digit_array.count

  raised_array = digit_array.map do |each|
    each = each ** digit_count
  end


  number == raised_array.sum


end

def num_to_arr_of_digits(num)

  num.to_s.split("").map { |e| e.to_i }

end

puts narcissistic(153)  #true
puts
puts narcissistic(1634) # true
puts
puts narcissistic(1635) # false
