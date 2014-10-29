require 'spec_helper'

describe "Human Player" do
  let(:ui) { TicTacToeUi.new }
  let(:player) { HumanPlayer.new("player1", "X", ui) }
  let(:board) { TicTacToeBoard.new(3) }

  before do
    allow(ui).to receive(:display)
    allow(ui).to receive(:get_input)
  end

  describe "get_move" do
    it "gets the players move" do
      allow(ui).to receive(:get_input) { "6" }

      expect(player.get_move(board)).to eq(6)
    end  
    
    it "asks for next move" do
      expect(ui).to receive(:display).with("player1, what is your next move?")
      player.get_move(board)
    end

    context "bad move" do
      it "asks for the player's move again" do
        allow(ui).to receive(:get_input).and_return("20", "6")

        expect(player.get_move(board)).to eq(6)
      end

      it "tells the player the move is invalid" do
        allow(ui).to receive(:get_input).and_return("20", "6")
        expect(ui).to receive(:display).with("Space is not available. Please choose a different space.")

        player.get_move(board)
      end
    end
  end
end
