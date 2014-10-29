class HumanPlayer < Player
  def get_move(board)
    ask_for_move
  
    move = @ui.get_input.to_i

    if valid_move?(move, board)
      move
    else
      display_move_error
      get_move(board)
    end
  end

  def ask_for_move
    @ui.display("#{name}, what is your next move?")
  end  

  def display_move_error
    @ui.display("Space is not available. Please choose a different space.")
  end

  def valid_move?(move, board)
    board.available_spaces.include?(move)
  end
end  
