require 'pry'

def max_power(s)
  powers = s.chars.chunk { |c| c }.map{ |c, a| [c, a.size] }
  require 'pry'; binding.pry
  values = []
  powers.map { |l, n| values << n }
  values.max
end

test1 = max_power("leetcode")
test2 = max_power("abbcccddddeeeeedcba")