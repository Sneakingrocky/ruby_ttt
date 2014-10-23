require 'tic_tac_toe_board'
require 'presenter'

describe Presenter do
  let (:presenter_3x3) { Presenter.new(board_3x3)}
  let (:presenter_4x4) { Presenter.new(board_4x4)}
  let (:board_3x3) { TicTacToeBoard.new(3) }
  let (:board_4x4) { TicTacToeBoard.new(4) }

  describe "prints 3x3 board" do 
    it "prints a fresh 3x3 board to the console" do
      expected_output = "  0  | 1  | 2  \n" +
                        "---------------\n" +
                        "  3  | 4  | 5  \n" +
                        "---------------\n" +
                        "  6  | 7  | 8  "
                  
                      
                          
      expect(presenter_3x3.display_board).to eq(expected_output)
    end

    it "prints a new 3x3 board after a move has been placed" do
      board_3x3.set_space(0, "X")
      board_3x3.set_space(5, "O")

      expected_output = "  X  | 1  | 2  \n" +
                        "---------------\n" +
                        "  3  | 4  | O  \n" +
                        "---------------\n" +
                        "  6  | 7  | 8  "

                          
      expect(presenter_3x3.display_board).to eq(expected_output)
    end

    it "prints a fresh 4x4 board to the console" do
      expected_output = "  0  | 1  | 2  | 3  \n" +
                        "--------------------\n" +
                        "  4  | 5  | 6  | 7  \n" +
                        "--------------------\n" +
                        "  8  | 9  | 10 | 11 \n" +
                        "--------------------\n" +
                        "  12 | 13 | 14 | 15 "

                          
      expect(presenter_4x4.display_board).to eq(expected_output)
    end
  end
end      
