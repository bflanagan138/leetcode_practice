require 'pry'
# class TwoSum
  def two_sum(nums, target)
    return [0,1] if nums.count == 2
    (nums.length - 1).times do
      nums.each_with_index do |num, index|
        require 'pry'; binding.pry
        nums.delete(num)
        ns = nums
        output = []
        (ns.length - 1).times do
          ns.each_with_index do |n, i|
                  if num + n == target
                      output << index
                      output << i
                  end
              end
          end
      end
    end
  end
# end

two_sum([2,7,11,15], 9)

##abdul solution
##use to learn debugger
# def two_sum(nums, target)
#   answers = Hash.new

#   nums.each_with_index do |num, idx|
#     answers[num] = idx
#   end

#   nums.each_with_index do |num, idx|
#     second_num = target - num

#     if answers[second_num] && answers[second_num] != idx
#       return [idx, answers[second_num]]
#     end
#   end
# end