require 'pry'
# group nums together (hash: key is num, value is frequency)
# sort in order of frequency
# return number indicated as k of most frequent
def top_k_frequent(nums, k)
  hash = Hash.new(0)
  nums.each { |num| hash[num] += 1}
  sorted = hash.sort_by { |key, v| -v }
  sorted.map { |a| a.first }.first(k)
end

test1 = top_k_frequent([1,1,1,2,2,3], 2)
test2 = top_k_frequent([1], 1)
test3 = top_k_frequent([1,1,1,2,2,3,4,4,4,4,5,5,5,5,5,5], 3)