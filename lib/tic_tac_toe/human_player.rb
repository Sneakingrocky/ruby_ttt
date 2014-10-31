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
    @ui.ask_for_move_text(name)
  end  

  def display_move_error
    @ui.invalid_space_error_text
  end

  def valid_move?(move, board)
    board.available_spaces.include?(move)
  end
end  
