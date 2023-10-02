require 'pry'
#remove all instances of val and for each add an _ to the end of the array
#count all values in array that do not = _
#return count of values not equal to _ and new array

def remove_element(nums, val)
  # nums.each_with_index do |num, index|
  #   if num == val
  #     nums.delete_at(index)
  #   end
  # end
  chars = 0
  blanks = 88
  nums.each_with_index do |num, ind|
    if num == val
      1.times do 
        nums.delete_at(ind)
        nums.append(blanks)
        blanks += 1
      end
    else
      chars += 1
    end
  end
    require 'pry'; binding.pry
  return chars, nums
end

test1 = remove_element([3,2,2,3], 3)
require 'pry'; binding.pry