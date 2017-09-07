movies = [
  ['Alfonso Cuaron',  'Gravity'],
  ['Spike Jonze',     'Her'],
  ['Martin Scorsese', 'The Wolf of Wall Street']
]

hash = {}

movies.each do |each_array|
  key = each_array[0]
  value = each_array[1]

  hash[key] = value
end

puts hash
