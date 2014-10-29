class ComputerPlayer < Player
  def get_move(board)
    available_moves = board.available_spaces
    available_moves.sample
  end
end
