require 'pry'

def two_sum(numbers, target)
  
  left = 0
  right = numbers.length - 1
  until right == 0
    right.times do 
      ans = target - numbers[left]
      if ans == numbers[right]
        return [(left + 1), (right + 1)]
      else
        left += 1
      end
    end
    left = 0
    right -= 1
  end
end


test1 = two_sum([2,7,11,15], 9)
test2 = two_sum([2,3,4], 6)
test3 = two_sum([-1,0], -1)
test4 = two_sum([2,5,5,11], 10)
require 'pry'; binding.pry
