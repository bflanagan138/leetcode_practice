require 'pry'

def contains_duplicate(nums)
  hash = Hash.new(0)
  nums.map { |num| hash[num] += 1 }
  if hash.values.uniq == [1]
    false
  else
    true
  end
end

test1 = contains_duplicate([1, 2, 3, 4])
test2 = contains_duplicate([1,2,3,1])
test3 = contains_duplicate([1,1,1,3,3,4,3,2,4,2])
require 'pry'; binding.pry