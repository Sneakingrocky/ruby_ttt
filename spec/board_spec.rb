require 'spec_helper'

describe Board do
  let(:board) { Board.new(3) }

  describe "initialize" do
    it "sets the width of the board" do

      expect(board.width).to eq(3)
    end
  end

  describe "number_of_spaces" do
    it "returns the number of spaces" do

      expect(board.number_of_spaces).to eq(9)
    end
  end    

  describe "setting and getting spaces" do
    it "sets a space" do
      board.set_space(2, "x")

      expect(board.get_space(2)).to eq("x")
    end

    it "sets another space" do
      board.set_space(0, "o")
    
      expect(board.get_space(0)).to eq("o")
    end

    it "reads nil for an empty space" do
      expect(board.get_space(3)).to eq(nil)
    end

    it "raises an error if the space is taken" do
      board.set_space(1, "x")
      expect { board.set_space(1, "o") }.to raise_error(ArgumentError, "Space is taken")
    end

    it "raises an error for an invalid space" do
      expect { board.set_space(10, "x") }.to raise_error(ArgumentError, "Invalid space")
    end
   
  end

  describe "space_taken?" do
    it "returns true if space is taken" do
      board.set_space(3, "x")
      expect(board.space_taken?(3)).to eq(true)
    end

    it "returns false if space is not taken" do
      expect(board.space_taken?(3)).to eq(false)
    end
  end

  describe "available_spaces" do
    it "returns all the spaces for an empty board" do
      expect(board.available_spaces).to eq([0,1,2,3,4,5,6,7,8])
    end

    it "doesn't return spaces that are taken" do
      board.set_space(2, "x")
      board.set_space(5, "o")
      expect(board.available_spaces).to eq([0,1,3,4,6,7,8])
    end
  end
end
