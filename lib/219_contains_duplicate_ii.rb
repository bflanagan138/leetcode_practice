require 'pry'
# convert nums to hash with index (can't do, overwrites key when duplicate)
# find numbers that are the same
# subtract their indexes
def contains_nearby_duplicate(nums, k)
  if nums.uniq == nums
    false
  elsif
  indexes = []
  nums.each_with_index do |num, ind|
    indexes << ind
  end

  num_ind = {}
  nums.each_with_index do |num, ind|
    if num_ind.has_key?(num)
      num_ind[num] << indexes[ind]
    else
      num_ind[num] = [indexes[ind]]
    end
  end

    multiples = []
    num_ind.values.each do |val|
      if val.count != 1
        multiples = val
      end
    end
  
  
    output = []
   
    multiples.length - 1.times do 
      output << (multiples[0] - multiples[1]).abs
      multiples.pop
    end
  #  require 'pry'; binding.pry
  #   output.any?()
  end
end


test1 = contains_nearby_duplicate([1,2,3,1], 3)
test2 = contains_nearby_duplicate([1,0,1,1], 1)
test3 = contains_nearby_duplicate([1,2,3,1,2,3], 2)

require 'pry'; binding.pry