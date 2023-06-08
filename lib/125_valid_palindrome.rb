require 'pry'

# def is_palindrome(s)
#   letters = s.downcase.gsub(/[^0-9a-z]/, '')

#   letters == letters.reverse
#   require 'pry'; binding.pry
# end

#   test1 = is_palindrome("A man, a plan, a canal: Panama")
#   test2 = is_palindrome("race a car")
#   test3 = is_palindrome(" ")
#   require 'pry'; binding.pry
# delete spaces and special characters
# downcase phrase
# join phrase 
# two pointers method

# def is_palindrome(s)
#   letters = s.gsub(/[^0-9a-z]/, '').downcase
#   return true if letters.length <= 1

#   left = 0
#   right = letters.length - 1
#   until left > right 
#     return false if letters[left] != letters[right]
#     left += 1
#     right -= 1
#   end
#   true
# end


# def is_palindrome(s)
#   letters = s.downcase.gsub(/[^0-9a-z]/, '')
#   return true if letters.length <= 1

#   left = 0
#   right = letters.length - 1
#   until left > right 
#     if letters[left] != letters[right]
#       return false
#     else
#       left += 1
#       right -= 1
#     end
#   end
#   true
# end

# test1 = is_palindrome("A man, a plan, a canal: Panama")
# test2 = is_palindrome("race a car")
# test3 = is_palindrome(" ")
# test4 = is_palindrome("T")
# require 'pry'; binding.pry

def is_palindrome(s)
  letters = s.downcase.gsub(/[^0-9a-z]/, '')
  l = letters.length / 2
  
  until letters.length <= 1
    if letters[0] != letters[-1]
      return false
    else
      letters.slice!(0)
      letters.slice!(-1)
    end
  end
  true
end

test1 = is_palindrome("A man, a plan, a canal: Panama")
test2 = is_palindrome("race a car")
test3 = is_palindrome(" ")
test4 = is_palindrome("T")
require 'pry'; binding.pry