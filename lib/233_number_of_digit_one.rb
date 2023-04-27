require 'pry'
# find all positive numbers in range up to n
# split all numbers
# count how many times 1 appears
def count_digit_one(n)
  # counter = 0
  # range = (1..n).to_a
  # range.each do |r|
  #   str = r.to_s.split('')
  #   str.map do |l|
  #     counter += 1 if l == "1"
  #   end
  # end
  # counter

 range = (1..n)
  require 'pry'; binding.pry
  # end
end

test1 = count_digit_one(13)
test2 = count_digit_one(3184191)
require 'pry'; binding.pry
#times out on larger numbers