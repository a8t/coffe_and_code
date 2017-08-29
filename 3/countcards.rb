CARDS_IN_A_DECK = 52
CARDS_PER_RANK  = 4

def card_count(string_of_cards)

  count = 0
  # each_count = {}

  return false if string_of_cards.length > CARDS_IN_A_DECK

  string_of_cards.split("").each do |each_card| # split string into an array of characters, e.g.
                                                # "A3J4" -> ["A","3","J","4"]. Then iterate through.

    # if each_count[each_card] == nil   # if it's not yet in each_count,
    #   each_count[each_card] = 1       # set count to 1
    # elsif each_count[each_card] == 4  # if count for this card is already 4, it's a cheat!
    #   return false
    # else                              # otherwise (if it already is in the count but count < 4)
    #   each_count[each_card] += 1      # increase the count by 1
    # end

    return false if string_of_cards.count(each_card) > CARDS_PER_RANK   # actually let's do it like this instead


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

2
3
4
5
6
7
8
9
