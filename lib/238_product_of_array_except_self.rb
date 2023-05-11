
require 'pry'
# iterate over array
# for each multiply all elements
# divide by current number

def product_except_self(nums)
  output = []
  # numbers = nums
  nums.each do |num| 
    if !nums.include?(0)
      output << ( nums.inject(:*) / num )
      # nums.delete(num)
      # output << nums.inject(:*)
    else
      container = []
      nums.each do |num|
        numbers.delete_if do |num|
          num == 0
        end
        require 'pry'; binding.pry
        output << numbers.inject(:*) 
      end
    end
  end
  output
end

test1 = product_except_self([1,2,3,4])
test2 = product_except_self([-1,1,0,-3,3])
# test3 = product_except_self([])
require 'pry'; binding.pry
