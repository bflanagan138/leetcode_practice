require 'pry'

def prefix_count(words, pref)
  counter = 0
  p_l = pref.length
  words.map do |w|
    require 'pry'; binding.pry
  end
  
end

test1 = prefix_count(words = ["pay","attention","practice","attend"], pref = "at")
test2 = prefix_count(words = ["leetcode","win","loops","success"], pref = "code")