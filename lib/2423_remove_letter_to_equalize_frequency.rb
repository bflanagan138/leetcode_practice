require 'pry'

def equal_frequency(word)
  arr = word.split('')
  hash = Hash.new(0)
  arr.each { |x| hash[x] += 1 }
  values = hash.values
  sorted = values.sort
  small_nums = sorted[0..-2]
  lrg_nums = sorted[1..-1]
  # require 'pry'; binding.pry
  
  require 'pry'; binding.pry
  if arr.uniq.length == 1
    true
  elsif sorted.uniq.length > 2
    false 
  elsif sorted[0] == 1 && sorted[1..-1].length == 1
    true 
  elsif sorted.first == 1 && sorted.last == 1
    true
  elsif small_nums.uniq.length != 1 
    
    if sorted[-1] - sorted[0] == 1
      true
    end
  elsif lrg_nums.uniq.length != 1
    if sorted[1] - sorted[0] == 1
      true
    end
  else
    false
  end

  # letters = word.split('')
  # unique = word.split('').uniq
  # if letters.uniq == letters
  #   false
  # elsif letters.length == unique.length
  #   false
  # else
  #   unique.map do |letter|
  #     letters.delete_at(letters.index(letter))
  #   end
  #   require 'pry'; binding.pry
  #   if letters.count == 0
  #     false
  #   else
  #     true
  #   end
  # end
  # # require 'pry'; binding.pry
end

# test1 = equal_frequency(word = 'aaaabbbbccc')
# test1_5 = equal_frequency(word = 'bac')
test2 = equal_frequency(word = "abcc") 
test3 = equal_frequency(word = "aazz") 