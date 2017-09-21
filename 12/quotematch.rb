# Problems for coffee & code Session 12
#
# Matching Quotation Marks (together as a group)
#
# Write a method that accepts a string as an argument and returns true or false indicating whether all quotations within that string are properly closed.
#
# For example:
#
# check_quotes('"Hello" said Bell \n "How are you?" replied Kat') # => true
# check_quotes('"Hello said Bell \n "How are you?" replied Kat') # => false
# Incorporate with Bracket-Matching Logic (individual)
#
# Return to the bracket-matching code from this past reinforcement exercise and integrate the code we wrote together so your method checks brackets ((), [], {}, <>) as well as quotes (" ").


def check_quotes(quoteString)

  even_number = quoteString.count('"') % 2 == 0

  quoteString.split('\n').each do | each_line |
    if even_number == false
      return false
    end
  end


end

p check_quotes('"Hello" said Bell \n "How are you?" replied Kat. \n "I am doing okay," said Bell.') # => true
p check_quotes('"Hello said Bell \n "How are you?" replied Kat') # => false
