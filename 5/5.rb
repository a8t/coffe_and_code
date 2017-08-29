def create_phone_number(array)

  area_code  = array[0..2].join()
  next_three = array[3..5].join()
  last_four  = array[6..9].join()

  "(#{area_code}) #{next_three}-#{last_four}"

end

puts create_phone_number([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])

def luck_check(str)

  return "Invalid input" if /[\D]/.match(str) or str == ""

  mid = str.length / 2

  left  = str[0...mid]
  right = str[mid..-1]

  if left.sum == right.sum
    return true
  else
    return false
  end
end

p luck_check("003111")
p luck_check("813372")
p luck_check("003001")
p luck_check("")
p luck_check("hello")
p luck_check("02.3")
