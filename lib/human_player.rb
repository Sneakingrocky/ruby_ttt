class HumanPlayer
  attr_reader :name, :assigned_token

  def initialize(name, assigned_token, ui)
    @name = name
    @assigned_token = assigned_token
    @ui = ui
  end

  def ask_for_move
    @ui.display("#{name}, what is your next move?")
  end  

  def get_move
    ask_for_move
  
    @ui.get_input.to_i
  end

end  