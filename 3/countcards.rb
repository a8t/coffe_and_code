def card_count(string_of_cards)

  count = 0

  return false if string_of_cards.length > 52

  string_of_cards.split("").each do |each_card|
    case each_card.to_i
    when 0
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
