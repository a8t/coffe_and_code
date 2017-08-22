movie_array = [
  ['Alfonso Cuaron', 'Gravity'],
  ['Spike Jonze', 'Her'],
  ['Martin Scorsese', 'The Wolf of Wall Street']
]

def array2hash(array_of_arrays)
  # hash = {}
  # array_of_arrays.each do |each_movie|
  #   hash[:"#{each_movie[0]}"] = each_movie[1]
  # end
  # return hash
  array_of_arrays.to_h
end



p array2hash(movie_array)


pets = [
  {
    type: "dog",
    number: 12
  },
  {
    type: "cat",
    number: 15
  },
  {
    type: "fish",
    number: 23
  },
]

def number_of(array)
  # sum = 0
  # array.each do |hash|
  #   sum += hash.values[1]
  # end
  # return sum
  array.map{|hash| hash[:number]}.sum
end


p number_of(pets)
