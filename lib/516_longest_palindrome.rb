require 'pry'

def longest_palindrome_subseq(s)
  if s.reverse == true
    s.length
  else 
    arr = s.split('')
    c = []
    arr.length.times do
      arr.each do |a|
        a.delete_at(c)
        return arr.length if arr == arr.reverse
        end
      end
    end
  end
end

test1 = longest_palindrome_subseq("bbbab")