# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0,1,2], # Top Horizontal
  [3,4,5], # Middle Horizontal
  [6,7,8], # Bottom Horizontal
  [0,3,6], # Left Vertical
  [1,4,7], # Middle Vertical
  [2,5,8], # Right Vertical
  [0,4,8], # L to R Diag
  [2,4,6]  # R to L Diag
]

# for each win_combination in WIN_COMBINATIONS

#   # win_combination is a 3 element array of indexes that compose a win, [0,1,2]
#   # grab each index from the win_combination that composes a win.

# def win? (board)
#
#   win_index_1 = WIN_COMBINATIONS[0]
#   win_index_2 = WIN_COMBINATIONS[1]
#   win_index_3 = WIN_COMBINATIONS[2]
#   win_index_4 = WIN_COMBINATIONS[3]
#   win_index_5 = WIN_COMBINATIONS[4]
#   win_index_6 = WIN_COMBINATIONS[5]
#   win_index_7 = WIN_COMBINATIONS[6]
#   win_index_8 = WIN_COMBINATIONS[7]
#   win_index_9 = WIN_COMBINATIONS[8]
#
#   position_1 = board[win_index_1] # load the value of the board at win_index_1
#   position_2 = board[win_index_2] # load the value of the board at win_index_2
#   position_3 = board[win_index_3] # load the value of the board at win_index_3


#   if position_1 == "X" && position_2 == "X" && position_3 == "X"
#     return win_combination # return the win_combination indexes that won.
#   else
#     false
#   end
# end

def won?(board)
  WIN_COMBINATIONS.each do |i|
    first = i[0]
    second = i[1]
    third = i[2]
    if board[first] == "X" && board[second] == "X" && board[third] == "X"
      return i
    elsif board[first] == "O" && board[second] == "O" && board[third] == "O"
      return i
    elsif !(board[first] == "X" && board[second] == "X" && board[third] == "X" || board[first] == "O" && board[second] == "O" && board[third] == "O"
      return false)
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
