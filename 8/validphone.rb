def valid_phone_number(string)

  /\([0-9]{3}\) [0-9]{3}\-[0-9]{4}/ === string

end

puts valid_phone_number("(123) 456-7890") # => returns true
puts valid_phone_number("(1111)555 2345") # => returns false
puts valid_phone_number("(098) 123 4567") # => returns false
