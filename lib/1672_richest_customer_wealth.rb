require 'pry'

#iterate through accounts
#add each sub array together into new array
#return max value of sub array

def maximum_wealth(accounts)
  totals = []
  accounts.each do |acct|
    totals << acct.sum
  end
  totals.max
end

test1 = maximum_wealth([[1,2,3],[3,2,1]])
test2 = maximum_wealth([[1,5],[7,3],[3,5]])
test3 = maximum_wealth([[2,8,7],[7,1,3],[1,9,5]])
require 'pry'; binding.pry