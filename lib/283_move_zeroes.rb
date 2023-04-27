require 'pry'
def move_zeroes(nums)
  # length = nums.length
  # length.times do 
    nums.each_with_index do |num, ind|
      if num == 0
        nums.delete_at(ind)
        nums.push(0)
      else
        num
      end
      #   end
    end
    nums
end

test1 = move_zeroes([0,1,0,3,12])
test2 = move_zeroes([0])
test3 = move_zeroes([0,0,1]
)
require 'pry'; binding.pry