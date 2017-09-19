song = [["row", 3], ["your", 1], ["boat", 1]]

def row(old)
  new_arr = []
  old.each do |each_sub_array|
    each_sub_array[1].times do
      new_arr << each_sub_array[0]
    end
  end
  return new_arr
end

p row(song)
