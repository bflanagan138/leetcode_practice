require 'pry'

def longest_consecutive(nums)
    sorted_hash = Hash.new
    sorted = nums.uniq.sort
    sorted.each_with_index do |num, ind|
      sorted_hash[num] = ind
    end
    counter = 0
    sorted_hash
    require 'pry'; binding.pry
end

test1 = longest_consecutive([100,4,200,1,3,2])
test2 = longest_consecutive([0,3,7,2,5,8,4,6,0,1])