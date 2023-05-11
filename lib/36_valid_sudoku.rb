require 'pry'
#1-9 only contains each number 1-9 one time each
#10-18 only contains each number 1-9 one time (etc for 9 rows)
#same for columns
#modulo 9 to check each row

def is_valid_sudoku(board)
  c1 = []
  c2 = []
  c3 = []
  c4 = []
  c5 = []
  c6 = []
  c7 = []
  c8 = []
  c9 = []
  board.each do |column|
    c1 << column[0]
    c2 << column[1]
    c3 << column[2]
    c4 << column[3]
    c5 << column[4]
    c6 << column[5]
    c7 << column[6]
    c8 << column[7]
    c9 << column[8]
  end
  c1.delete(".")
  c2.delete(".")
  c3.delete(".")
  c4.delete(".")
  c5.delete(".")
  c6.delete(".")
  c7.delete(".")
  c8.delete(".")
  c9.delete(".")
  if c1 != c1.uniq || c2 != c2.uniq || c3 != c3.uniq || c4 != c4.uniq || c5 != c5.uniq || c6 != c6.uniq || c7 != c7.uniq || c8 != c8.uniq || c9 != c9.uniq
    false
  elsif
    board.each do |row|
      row.delete(".")
    end
    if board[0] != board[0].uniq || board[1] != board[1].uniq || board[2] != board[2].uniq || board[3] != board[3].uniq || board[4] != board[4].uniq || board[5] != board[5].uniq || board[6] != board[6].uniq || board[7] != board[7].uniq || board[8] != board[8].uniq
      false
    else
      true
    end
  end
end
# board.each do |row|
#   require 'pry'; binding.pry
#   return false if board.detect { |c| board.count(c) > 1 }
# end

test1 = is_valid_sudoku([["5","3",".",".","7",".",".",".","."],["6",".",".","1","9","5",".",".","."],[".","9","8",".",".",".",".","6","."],["8",".",".",".","6",".",".",".","3"],["4",".",".","8",".","3",".",".","1"],["7",".",".",".","2",".",".",".","6"],[".","6",".",".",".",".","2","8","."],[".",".",".","4","1","9",".",".","5"],[".",".",".",".","8",".",".","7","9"]])
test2 = is_valid_sudoku([["8","3",".",".","7",".",".",".","."],["6",".",".","1","9","5",".",".","."],[".","9","8",".",".",".",".","6","."],["8",".",".",".","6",".",".",".","3"],["4",".",".","8",".","3",".",".","1"],["7",".",".",".","2",".",".",".","6"],[".","6",".",".",".",".","2","8","."],[".",".",".","4","1","9",".",".","5"],[".",".",".",".","8",".",".","7","9"]])
test3 = is_valid_sudoku([["5","3",".",".","5",".",".",".","."],["6",".",".","1","9","5",".",".","."],[".","9","8",".",".",".",".","6","."],["8",".",".",".","6",".",".",".","3"],["4",".",".","8",".","3",".",".","1"],["7",".",".",".","2",".",".",".","6"],[".","6",".",".",".",".","2","8","."],[".",".",".","4","1","9",".",".","5"],[".",".",".",".","8",".",".","7","9"]])
require 'pry'; binding.pry