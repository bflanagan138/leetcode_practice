def add_digits(num)
  until num.digits.length == 1
    # require 'pry'; binding.pry
    num = num.digits.sum
  end
  num
end

test1 = add_digits(38)
test2 = add_digits(0)
test3 = add_digits(45824)
require 'pry'; binding.pry