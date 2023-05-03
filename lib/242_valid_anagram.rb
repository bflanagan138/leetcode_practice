require 'pry'

def is_anagram(s, t)
    # s_hash = Hash.new(0)
    # t_hash = Hash.new(0)
    # s.split('').map { |let| let +=1 }
    # t.split('').map { |lett| lett += 1 }
    # if s.split('').sort == t.split('').sort
    #     true
    # else
    #     false
    # end
    hash = Hash.new(0)
    if s.length != t.length
        false
    elsif
        for lett in s.chars
            hash[lett] += 1
        end

        for lett in t.chars
            # require 'pry'; binding.pry
            hash[lett] -= 1
        end
        
        if !hash.any? { |k,v| v != 0 }
            true
        else
            false
        end
    end
    require 'pry'; binding.pry
end

# test_1 = is_anagram(s = "anagram", t = "nagaram")
test_2 = is_anagram(s = "rat", t = "car")
require 'pry'; binding.pry