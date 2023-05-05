require 'pry'
# iterate through array
# group anagrams into separate arrays
# if length of array is 1, return array nested inside array
# group_by?
def group_anagrams(strs)
  # return [strs] if strs.length == 1
  strs.group_by { |s| s.chars.sort }.values
end

test1 = group_anagrams(["eat","tea","tan","ate","nat","bat"])
test2 = group_anagrams([""])
test3 = group_anagrams(["a"])
require 'pry'; binding.pry