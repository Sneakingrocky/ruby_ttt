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
    @ui.game_over_text(@ttt_board.winner)  
  end

  def game_rules
    @ui.game_rules_text
  end

  def play_turn(player)
    @ui.display(@presenter.display_board)
    @ui.make_white_space
    move = player.get_move(@ttt_board)
    @ttt_board.set_space(move, player.assigned_token)
  end

end 
