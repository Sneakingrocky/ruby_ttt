require 'spec_helper'

describe "Game Loop" do
  
  it "goes through a game loop" do
    ui = TicTacToeUi.new
    ttt_board = TicTacToeBoard.new(3)
    player1 = HumanPlayer.new("Player 1", TicTacToeBoard::X_TOKEN, ui)
    player2 = HumanPlayer.new("Player 2", TicTacToeBoard::O_TOKEN, ui)
    presenter = Presenter.new(ttt_board)
    game_loop = GameLoop.new(ttt_board, player1, player2, ui, presenter) 
    

    allow(player1).to receive(:get_move).and_return(0, 1, 2)
    allow(player2).to receive(:get_move).and_return(8, 4)
    expect(ui).to receive(:game_over_text).with("X")

    game_loop.play_game

  end 
end   