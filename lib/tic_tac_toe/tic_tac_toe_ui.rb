class TicTacToeUi

  def display(msg)
    puts msg
  end

  def get_input
    gets.chomp
  end

  def game_rules_text
    display("Welcome to Tic Tac Toe! 
      
      Here is how you play: 

      Player 1 = X
      Player 2 = O

      You will take turns choosing the section number of the grid 
      that you wish to place your assigned letter. The first player to
      succeed in placing three respective marks in a horizontal, vertical, 
      or diagonal row wins the game.

    ")
  end
  
  def game_over_text(name)
    display("Game over! #{name} is the best")
  end
  
  def make_white_space
    display("\n")
  end
  
  def ask_for_move_text(name)
    display("#{name}, what is your next move?") 
  end
  
  def invalid_space_error_text
    display("Space is not available. Please choose a different space.")
  end           


end  
