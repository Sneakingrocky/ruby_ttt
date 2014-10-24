require 'human_player'
require 'tic_tac_toe_ui'

describe "Human Player" do

  describe "get_move" do
    it "gets the players move" do
      ui = TicTacToeUi.new
      player = HumanPlayer.new("player1", "X", ui)

      allow(ui).to receive(:get_input) { "6" }

      expect(player.get_move).to eq(6)
    end  
    
    it "asks for next move" do
      ui = TicTacToeUi.new
      player = HumanPlayer.new("player1", "X", ui)

      expect(ui).to receive(:display).with("player1, what is your next move?")
      player.get_move
    end
  end
end