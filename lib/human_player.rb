class HumanPlayer < Player
  def get_move(board)
    ask_for_move
  
    @ui.get_input.to_i
  end

  def ask_for_move
    @ui.display("#{name}, what is your next move?")
  end  
end  
