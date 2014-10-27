class GameLoop

  def initialize(ttt_board, player1, player2, ui, presenter) 
    @ttt_board = ttt_board
    @player1 = player1
    @player2 = player2
    @ui = ui
    @presenter = presenter
  end

  def play_game
    game_rules
    
    while true 
      play_turn(@player1)
      break if @ttt_board.game_is_over?
      play_turn(@player2)
      break if @ttt_board.game_is_over?
    end
    @ui.display(@presenter.display_board)
    @ui.display("Game over!")  
  end

  def game_rules
    @ui.display("Welcome to Tic Tac Toe! 
      
      Here is how you play: 

      Player 1 = X
      Player 2 = O

      You will take turns choosing the section number of the grid 
      that you wish to place your assigned letter. The first player to
      succeed in placing three respective marks in a horizontal, vertical, 
      or diagonal row wins the game.

    ")
  end

  def play_turn(player)
    @ui.display(@presenter.display_board)
    move = player.get_move
    @ttt_board.set_space(move, player.assigned_token)
  end

end 