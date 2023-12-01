require 'pry'
# def solution(a)
#   b = []
#   length = a.count
  
#   if length.even?
#       sub_arr_length = (length / 2) - 1
#   else
#       sub_arr_length = ((length - 1) / 2) - 1
#   end
#   a1 = a.take(length%2)
#   a2 = a.reverse.take(sub_arr_length)
  
#   until a1.count == 0
#       b << a1.shift
#       b << a.pop
#   end
  
#   if b.last == nil
#       b.pop
#   end

#   if b != b.uniq
#       false
#   elsif
#      b != b.sort
#       false
#   else
#       true
#   end
# end
def solution(a)
  length = a.length
  half_length = (length/2.0).round
  b = []
  a1,a2 = a.each_slice(half_length).to_a
  
  half_length.times do 
    b << a1.shift
    b << a2.pop
  end

  b2 = b.compact
  if b2 == b2.sort && b2 == b2.uniq
    true
  else
    false
  end
end


test1 = solution(a = [1, 3, 5, 6, 4, 2])
test2 = solution(a = [1, -89, -47, -38, 39, 82, 87, 40, -9, -41, -68])
test3 = solution(a = [-89, -47, -38, 39, 82, 87, 40, -9, -41, -68])

require 'pry'; binding.pry