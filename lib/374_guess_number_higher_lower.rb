
# l is always equal to 1, r is variable (n)
# pick = number
# if pick is higher, add -1 to pick. if lower, add 1 to pick
# if pick is -1
# start in middle, work outward

# The guess API is already defined for you.
# @param num, your guess
# @return -1 if num is higher than the picked number
#          1 if num is lower than the picked number
#          otherwise return 0
# def guess(num)

def guessNumber(n)
  l = 1
  r = n 
  while l <= r 
    base = (l + r) / 2
    result = guess(base)
    if result.zero?
      return base
    elsif result == -1
      r = base - 1
    else 
      l = base + 1
    end
  end
end

test1 = guessNumber(10)
test2 = guessNumber(1)
test3 = guessNumber(2)
