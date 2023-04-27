require 'pry'

def is_valid(s)
  chars = s.split('')
  chars.each_with_index do |c, i|
    if c == '(' && c.next == ')'
      true
    elsif c == '[' && c.next == ']'
      true
    elsif c == '{' && c.next == '}'
      true
    else
      false
    end
    require 'pry'; binding.pry
  end
end

test1 = is_valid("()")
test2 = is_valid("()[]{}")
test3 = is_valid("(]")