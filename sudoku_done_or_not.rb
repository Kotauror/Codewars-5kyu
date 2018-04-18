def done_or_not(board)
  count_sorted_rows(board) && count_sorted_columns(board) && count_sorted_squares(board) ? "Finished!" : "Try again!"
end

def count_sorted_rows(board)
  counter = 0
  board.each { |row|
    if row.sort == [1,2,3,4,5,6,7,8,9] then
      counter += 1
    end
  }
   return true if counter == 9
end

def count_sorted_columns(board)
  counter = 0
  for i in 0..8 do
    array = []
    for j in 0..8 do
      array.push(board[j][i])
      if array.sort == [1,2,3,4,5,6,7,8,9] then
        counter += 1
      end
    end
  end
   return true if counter == 9
end

def count_sorted_squares(board)
  counter = 0
  newboard = []
  newboard.push(
    (board[0][0..2] + board[1][0..2] + board[2][0..2]),
    (board[3][0..2] + board[4][0..2] + board[5][0..2]),
    (board[6][0..2] + board[7][0..2] + board[8][0..2]),
    (board[0][3..5] + board[1][3..5] + board[2][3..5]),
    (board[3][3..5] + board[4][3..5] + board[5][3..5]),
    (board[6][3..5] + board[7][3..5] + board[8][3..5]),
    (board[0][6..8] + board[1][6..8] + board[2][6..8]),
    (board[3][6..8] + board[4][6..8] + board[5][6..8]),
    (board[6][6..8] + board[7][6..8] + board[8][6..8])
  )

  newboard.each { |row|
    if row.sort == [1,2,3,4,5,6,7,8,9] then
      counter += 1
    end
  }

   return true if counter == 9

end
