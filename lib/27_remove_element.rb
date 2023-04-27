require 'pry'

def remove_element(nums, val)
  nums.each_with_index do |num, index|
    if num == val
      nums.delete_at(index)
    end
  end
  require 'pry'; binding.pry
end

test1 = remove_element([3,2,2,3], 3)