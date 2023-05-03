require 'pry'
  #create hash with num as key and index as ind
  #
  # def two_sum(nums, target)
  #   return [0,1] if nums.count == 2
  #   num_hash = Hash.new
  #   nums.each_with_index do |num, ind|
  #     num_hash[num] = ind
  #   end
  #   nums.each_with_index do |num, ind|
  #     num_2 = target - num
  #     require 'pry'; binding.pry
  #   end
    # (nums.length - 1).times do
    #   nums.each_with_index do |num, index|
    #     require 'pry'; binding.pry
    #     nums.delete(num)
    #     ns = nums
    #     output = []
    #     (ns.length - 1).times do
    #       ns.each_with_index do |n, i|
    #               if num + n == target
    #                   output << index
    #                   output << i
    #               end
    #           end
    #       end
    #   end
    # end
  # end
# end

def two_sum(nums, target)
  return [0, 1] if nums.length == 2
  num_hash = Hash.new

  nums.group_by do |num, idx|
    num_hash[num] = idx
  end

  nums.each_with_index do |num, idx|
    second_num = target - num
    require 'pry'; binding.pry
    return [idx, num_hash[second_num]] if num_hash[second_num] && num_hash[second_num] != idx
  end
end

# test1 = two_sum([2,7,11,15], 9)
# test2 = two_sum([3,2,4], 6)
# test3 = two_sum([3,3], 6)
test4 = two_sum([2,5,5,11], 10)



