require 'pry'
# delete spaces and special characters
# downcase phrase
# join phrase 
def is_palindrome(s)
  letters = s.gsub(/[^0-9a-z]/i, '').downcase
  if letters == letters.reverse
    true
  else
    false
  end
end

test1 = is_palindrome("A man, a plan, a canal: Panama")
test2 = is_palindrome("race a car")
test3 = is_palindrome(" ")
require 'pry'; binding.pry