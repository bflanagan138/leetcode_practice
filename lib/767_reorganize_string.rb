require 'pry'
# if there is only one unique letter, return ""
# if there are more than one unique letter, if total letter count / 2 is less than or equal to any letter count, return ""
def reorganize_string(s)
  letters = s.split('')
  total_chars = letters.count
  counts = Hash.new(0)
  letters.each { |char| counts[char] += 1}
  return "" if (total_chars / 2) <= counts.values.max
  
end

# test1 = reorganize_string("aab")
test2 = reorganize_string("aaab")
require 'pry'; binding.pry