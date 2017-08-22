def card_count(string_of_cards)

  count = 0
  each_count = {}

  return false if string_of_cards.length > 52

  string_of_cards.split("").each do |each_card|

    if each_count[each_card] == nil   # if it's not yet in each_count,
      each_count[each_card] = 1       # set count to 1
    elsif each_count[each_card] == 4  # if count for this card is arleady 4, it's a cheat!
      return false
    else                              # otherwise (if it already is in the count but count < 4)
        each_count[each_card] += 1    # increase the count by 1
    end



    case each_card.to_i               # convert each_card to integer, because:
    when 0                            # string (e.g. T, J, Q, K, A) to_i == 0.
      count -= 1
    when 2..6
      count += 1
    else
      next
    end
    
  end

  count

end

puts card_count('K2T6AA')
puts card_count('798TT23')
puts card_count('235T2')
puts card_count('KKT2KKK')
