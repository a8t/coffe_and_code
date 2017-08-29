require "pp"

def nonunique(string)

  newstring = []

  string.downcase.gsub(/\s+/, "").each_char do |x|
    if string.count(x) > 1
      newstring << x
      string.delete!(x)
    end
  end
  newstring.sort.join("")
end

# puts nonunique('Assignment')
# puts nonunique("I \nsaw a movie this week")
#

arr = [
  { name: 'Roseanne Gaudette',  birth_day: '3/8/2001',  birth_sex: 'F' },
  { name: 'Janyce Beason',      birth_day: '4/12/1982', birth_sex: 'F' },
  { name: 'Xue Mei',            birth_day: '5/11/1983', birth_sex: 'F' },
  { name: 'Norberto Mauriello', birth_day: '1/2/1988',  birth_sex: 'M' }
]
#
# def analyze(arr)
#
#   decades = {
#   }
#
#   arr.each do |each_person|
#
#     case each_person[:birth_day][-4..-1].to_i
#     when 1970..1979
#       decades[:seventies] == nil ? decades[:seventies] = 1 : decades[:seventies] += 1
#     when 1980..1989
#       decades[:eighties] == nil ? decades[:eighties] = 1 : decades[:eighties] += 1
#     when 1990..2000
#       decades[:nineties] == nil ? decades[:nineties] = 1 : decades[:nineties] += 1
#     when 2000..2009
#       decades[:twothousands] == nil ? decades[:twothousands] = 1 : decades[:twothousands] += 1
#     end
#   end
#
#   decades
#
# end

# print analyze(arr)

class People

  @@all = []

  attr_reader :name, :birth_day, :birth_sex

  def initialize(name, birth_day, birth_sex)
    @name = name
    @birth_day = birth_day
    @birth_sex = birth_sex
  end

  def self.create_from_arr(arr_people)
    arr_people.each do |people_hash|
      new = People.new(people_hash[:name],people_hash[:birth_day],people_hash[:birth_sex])
      @@all << new
    end
  end

  def self.all
    @@all
  end

  def self.analyze
    @@all.each
  end
end

People.create_from_arr(arr)

pp  People.all
