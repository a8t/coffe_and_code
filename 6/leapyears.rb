def find_leap_years(start_year, end_year)

  leap_years_in_range = []

  current_year = start_year

  #increment until we're looking at the first leap year in the range
  current_year += 1 until current_year % 4 == 0

  until current_year > end_year do

    # skip the exception years
    unless current_year % 100 == 0 && current_year % 400 != 0
      leap_years_in_range << current_year
    end

    #increase to the next (potential) leap year
    current_year += 4
  end

  leap_years_in_range

end

p find_leap_years(2000, 2012)
p find_leap_years(1895, 1910)
