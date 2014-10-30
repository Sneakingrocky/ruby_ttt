require 'spec_helper'

describe SmartComputerPlayer do
  describe "get_move" do
    let(:player) { described_class.new("Player 1", TicTacToeBoard::X_TOKEN, ui) }
    let(:ui) { TicTacToeUi.new }
    let(:board) { TicTacToeBoard.new(3) }

    it "chooses the winning move if available" do
      board.set_space 0, TicTacToeBoard::X_TOKEN
      board.set_space 4, TicTacToeBoard::X_TOKEN
      board.set_space 1, TicTacToeBoard::O_TOKEN
      board.set_space 2, TicTacToeBoard::O_TOKEN
      board.set_space 3, TicTacToeBoard::O_TOKEN

      move = player.get_move(board)

      expect(move).to eq(8)
    end

    it "chooses a blocking move if available" do
      board.set_space 0, TicTacToeBoard::X_TOKEN
      board.set_space 3, TicTacToeBoard::O_TOKEN
      board.set_space 5, TicTacToeBoard::O_TOKEN

      move = player.get_move(board)

      expect(move).to eq(4)
    end

    it "looks ahead! smarty pants" do
      board.set_space 4, TicTacToeBoard::O_TOKEN
      board.set_space 0, TicTacToeBoard::X_TOKEN
      board.set_space 8, TicTacToeBoard::O_TOKEN

      move = player.get_move(board)

      expect(move).to eq(2)
    end

    it "looks ahead! smarty pants" do
      board.set_space 4, TicTacToeBoard::O_TOKEN

      move = player.get_move(board)

      expect(move).to eq(2)
    end
  end
end
