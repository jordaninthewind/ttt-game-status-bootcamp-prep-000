# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# for each win_combination in WIN_COMBINATIONS

#   # win_combination is a 3 element array of indexes that compose a win, [0,1,2]
#   # grab each index from the win_combination that composes a win.
def win? (board)

  win_index_1 = WIN_COMBINATIONS[0]
  win_index_2 = WIN_COMBINATIONS[1]
  win_index_3 = WIN_COMBINATIONS[2]
  win_index_4 = WIN_COMBINATIONS[3]
  win_index_5 = WIN_COMBINATIONS[4]
  win_index_6 = WIN_COMBINATIONS[5]
  win_index_7 = WIN_COMBINATIONS[6]
  win_index_8 = WIN_COMBINATIONS[7]
  win_index_9 = WIN_COMBINATIONS[8]
  
  position_1 = board[win_index_1] # load the value of the board at win_index_1
  position_2 = board[win_index_2] # load the value of the board at win_index_2
  position_3 = board[win_index_3] # load the value of the board at win_index_3
  position_4 = board[win_index_4]
#   if position_1 == "X" && position_2 == "X" && position_3 == "X"
#     return win_combination # return the win_combination indexes that won.
#   else
#     false
#   end
# end

def won?(board)


  WIN_COMBINATIONS.each do |win|
    if win == ["X", "X", "X"] || ["O", "O", "O"]
      return true
    else
      return false
    end
  end
end

def full?()

end

def draw?()

end

def over?()

end

def winner()

end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]
