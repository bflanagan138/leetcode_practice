require 'pry'

def longest_consecutive(nums)
    hash = Hash.new
    sorted = nums.uniq.sort
    require 'pry'; binding.pry
    sorted.each_with_index do |num, ind|
      hash[num] = ind
    end
    
end

test1 = longest_consecutive([100,4,200,1,3,2])
test2 = longest_consecutive([0,3,7,2,5,8,4,6,0,1])