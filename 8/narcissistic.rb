def intiger_to_arr_of_digits(num)
  # converts number to string, splits string to array of characters,
  # and then converts each character to integer
  num.to_s.split("").map { |e| e.to_i }

end

def narcissistic(number)

  digit_array = integer_to_arr_of_digits(number)

  digit_count = digit_array.count

  # returns new array (called raised_array) where each element of
  # digit_array has been raised to digit_count
  raised_array = digit_array.map do |each|
    each = each ** digit_count
  end

  number == raised_array.sum

end



puts narcissistic(153)  #true
puts
puts narcissistic(1634) # true
puts
puts narcissistic(1635) # false
