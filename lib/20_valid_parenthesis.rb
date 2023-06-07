require 'pry'
#create a hash including opening parenthesis as keys, closing parenthesis as values
#create 
parens = { "(" => ")", "{" => "}", "[" => "]" }
opening_parens = parens.keys
closing_parens = parens.values
require 'pry'; binding.pry
def is_valid(s)
  stack = []
  s.each_char do |char|
    # if opening_parens.include?(char)
    #   stack << char
    # elsif closing_parens.include?(char)
    #   if char == parens[stack.last]

    #   end
    # end
  end
end

test1 = is_valid("()")
test2 = is_valid("()[]{}")
test3 = is_valid("(]")