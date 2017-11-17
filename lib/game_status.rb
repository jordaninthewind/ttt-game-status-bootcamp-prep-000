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

def won?(board)
  WIN_COMBINATIONS.each do |i|
    first = i[0]
    second = i[1]
    third = i[2]
    if board[first] == "X" && board[second] == "X" && board[third] == "X"
      return i
    elsif board[first] == "O" && board[second] == "O" && board[third] == "O"
      return i
    end
  end
  return false
end

def full?()
  if 
end

def draw?()

end

def over?()

end

def winner()

end

# Define your WIN_COMBINATIONS constant
