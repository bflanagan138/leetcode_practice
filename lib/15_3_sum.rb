require 'pry'

# add all number groups to container, if array.add == 0 return array
def three_sum(nums)
  potential_answers = nums.sort.combination(3).to_a.uniq
  sorted_answers = []

  potential_answers.each_with_index do |ans, ind|
    if ans.sum == 0 && sorted_answers.exclude?(ans)
      sorted_answers << potential_answers[ind]
    end
  end
  require 'pry'; binding.pry
  sorted_answers
  # potential_answers.map do |answer|
  #   sorted_answers << answer.sort
  # end

  # correct_answers = sorted_answers.find_all { |answer| answer.sum == 0}
  # correct_answers
end

test1 = three_sum([-1,0,1,2,-1,-4])
test2 = three_sum([0,1,1])
test3 = three_sum([0,0,0])
require 'pry'; binding.pry