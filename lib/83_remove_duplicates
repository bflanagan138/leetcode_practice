require 'pry'
def delete_duplicates(head)
  head.each_with_index do |h, index|
    head.delete_at(index) if h == head[index - 1]
  end 
  head
end

test1 = delete_duplicates([1, 1, 2])
test2 = delete_duplicates([1,1,2,3,3])