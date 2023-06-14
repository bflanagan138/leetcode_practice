require 'pry'

# add all number groups to container, if array.add == 0 return array
def three_sum(nums)
  potential_answers = nums.combination(3).to_a
  sorted_answers = []

  potential_answers.each do |answer|
    sorted_answers << answer.sort
  end

  correct_answers = sorted_answers.uniq.find_all { |answer| answer.sum == 0}
  correct_answers
end

test1 = three_sum([-1,0,1,2,-1,-4])
test2 = three_sum([0,1,1])
test3 = three_sum([0,0,0])
require 'pry'; binding.pry