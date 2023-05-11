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
  
  g1 = []
  g2 = []
  g3 = []
  g4 = []
  g5 = []
  g6 = []
  g7 = []
  g8 = []
  g9 = []

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
    g1 << board[0][0..2]
    g1 << board[1][0..2]
    g1 << board[2][0..2]
    g2 << board[0][3..5]
    g2 << board[1][3..5]
    g2 << board[2][3..5]
    g3 << board[0][6..8]
    g3 << board[1][6..8]
    g3 << board[2][6..8]
    g4 << board[3][0..2]
    g4 << board[4][0..2]
    g4 << board[5][0..2]
    g5 << board[3][3..5]
    g5 << board[4][3..5]
    g5 << board[5][3..5]
    g6 << board[3][6..8]
    g6 << board[4][6..8]
    g6 << board[5][6..8]
    g7 << board[6][0..2]
    g7 << board[7][0..2]
    g7 << board[8][0..2]
    g8 << board[6][3..5]
    g8 << board[7][3..5]
    g8 << board[8][3..5]
    g9 << board[6][6..8]
    g9 << board[7][6..8]
    g9 << board[8][6..8]

    g11 = g1.join.split("")
    g12 = g2.join.split("")
    g13 = g3.join.split("")
    g14 = g4.join.split("")
    g15 = g5.join.split("")
    g16 = g6.join.split("")
    g17 = g7.join.split("")
    g18 = g8.join.split("")
    g19 = g9.join.split("")

    g11.delete(".")
    g12.delete(".")
    g13.delete(".")
    g14.delete(".")
    g15.delete(".")
    g16.delete(".")
    g17.delete(".")
    g18.delete(".")
    g19.delete(".")
    
    if g11 != g11.uniq || g12 != g12.uniq || g13 != g13.uniq || g14 != g14.uniq || g15 != g15.uniq || g16 != g16.uniq || g17 != g17.uniq || g18 != g18.uniq || g19 != g19.uniq
      false
    elsif
      board.each do |row|
        row.delete(".")
      end
      if board[0] != board[0].uniq || board[1] != board[1].uniq || board[2] != board[2].uniq || board[3] != board[3].uniq || board[4] != board[4].uniq || board[5] != board[5].uniq || board[6] != board[6].uniq || board[7] != board[7].uniq || board[8] != board[8].uniq
        false
      end
    else
      true
    end
  end
end

test1 = is_valid_sudoku([["5","3",".",".","7",".",".",".","."],["6",".",".","1","9","5",".",".","."],[".","9","8",".",".",".",".","6","."],["8",".",".",".","6",".",".",".","3"],["4",".",".","8",".","3",".",".","1"],["7",".",".",".","2",".",".",".","6"],[".","6",".",".",".",".","2","8","."],[".",".",".","4","1","9",".",".","5"],[".",".",".",".","8",".",".","7","9"]])
test2 = is_valid_sudoku([["8","3",".",".","7",".",".",".","."],["6",".",".","1","9","5",".",".","."],[".","9","8",".",".",".",".","6","."],["8",".",".",".","6",".",".",".","3"],["4",".",".","8",".","3",".",".","1"],["7",".",".",".","2",".",".",".","6"],[".","6",".",".",".",".","2","8","."],[".",".",".","4","1","9",".",".","5"],[".",".",".",".","8",".",".","7","9"]])
test3 = is_valid_sudoku([["5","3",".",".","5",".",".",".","."],["6",".",".","1","9","5",".",".","."],[".","9","8",".",".",".",".","6","."],["8",".",".",".","6",".",".",".","3"],["4",".",".","8",".","3",".",".","1"],["7",".",".",".","2",".",".",".","6"],[".","6",".",".",".",".","2","8","."],[".",".",".","4","1","9",".",".","5"],[".",".",".",".","8",".",".","7","9"]])
require 'pry'; binding.pry