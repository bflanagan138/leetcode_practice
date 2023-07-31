require 'pry'

def fib(n)
  return n if n <= 1
  fib(n-1) + fib(n-2)
end


test0 = fib(1)
test1 = fib(2)
test2 = fib(3)
test3 = fib(4)
test4 = fib(0)

require 'pry'; binding.pry