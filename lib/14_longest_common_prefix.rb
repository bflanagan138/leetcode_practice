require 'pry'
# iterate through all incoming words
# return all of the similar letters
# make hash for all, letters as key, index as value
# def longest_common_prefix(strs)
#   first_letter = []
#   strs.each do |s|
#     first_letter << s[0]
#   end
#   return "" if first_letter.uniq.count != 1

#   shorties = []
#   counter = base_value(strs)
#   until shorties.uniq.length == 1
#     strs.each do |str|
#       shorties.clear()
#       shorties << str[0..counter]
#       counter -= 1
#     end
#   end
#   require 'pry'; binding.pry
#   shorties[0]
# end

# def base_value(strs)
#   shortest_word = []
#   strs.each do |str|
#     shortest_word << str.length
#   end
#   shortest_word.min - 1
# end

def longest_common_prefix(strs)
  return strs[0] if strs.uniq.count == 1
  base = []
  strs.each do |len|
    base << len.length
  end
  
  base_val = base.min
  prefix = ""
  letter = []
  counter = 0

  return "" if base_val == 0 
  
  until letter.uniq.count > 1
    letter.clear
    strs.each do |str|
      letter << str[counter]
    end
    prefix << strs[0][counter]
    counter += 1
  end
  prefix[0..-2]
end

test1 = longest_common_prefix(["flower","flow","flight"])
test2 = longest_common_prefix(["dog","racecar","car"])
test3 = longest_common_prefix(["brain", "brave", "brat"])
test4 = longest_common_prefix(["cir","car"])
test5 = longest_common_prefix(["", "base"])
require 'pry'; binding.pry