require 'tic_tac_toe_board'

describe TicTacToeBoard do
  let (:ttt_board1) { TicTacToeBoard.new(3) }
  let (:ttt_board2) { TicTacToeBoard.new(4) }


  describe "create TicTacToe Board" do
    
    describe "rows and columns" do
      
      it "creates rows and columns for a 3x3 board" do
        ttt_board1.set_space(0, 1)
        ttt_board1.set_space(1, 2)
        ttt_board1.set_space(2, 3)
        ttt_board1.set_space(3, 4)
        ttt_board1.set_space(4, 5)
        ttt_board1.set_space(5, 6)
        ttt_board1.set_space(6, 7)
        ttt_board1.set_space(7, 8)
        ttt_board1.set_space(8, 9)


        expected_output_rows = [[1, 2, 3], 
                                [4, 5, 6], 
                                [7, 8, 9]]

        expected_output_columns = [[1, 4, 7], 
                                   [2, 5, 8], 
                                   [3, 6, 9]]                        



        expect(ttt_board1.rows).to eq(expected_output_rows)
        expect(ttt_board1.columns).to eq(expected_output_columns)
      end
      
      it "creates rows and columns for a 4x4 board" do
        ttt_board2.set_space(0, 1)
        ttt_board2.set_space(1, 2)
        ttt_board2.set_space(2, 3)
        ttt_board2.set_space(3, 4)
        ttt_board2.set_space(4, 5)
        ttt_board2.set_space(5, 6)
        ttt_board2.set_space(6, 7)
        ttt_board2.set_space(7, 8)
        ttt_board2.set_space(8, 9)
        ttt_board2.set_space(9, 10)
        ttt_board2.set_space(10, 11)
        ttt_board2.set_space(11, 12)
        ttt_board2.set_space(12, 13)
        ttt_board2.set_space(13, 14)
        ttt_board2.set_space(14, 15)
        ttt_board2.set_space(15, 16)
       

        expected_output_rows = [[1, 2, 3, 4], 
                                [5, 6, 7, 8], 
                                [9, 10, 11, 12],
                                [13, 14, 15, 16]]

        expected_output_columns = [[1, 5, 9, 13], 
                                   [2, 6, 10, 14], 
                                   [3, 7, 11, 15],
                                   [4, 8, 12, 16]]                           

        expect(ttt_board2.rows).to eq(expected_output_rows)
        expect(ttt_board2.columns).to eq(expected_output_columns)
      end
    end

    describe "left_diagonal" do
      it "returns the spaces in the left diagonal" do
        ttt_board1.set_space(0, "a")
        ttt_board1.set_space(4, 2)
        ttt_board1.set_space(8, 3)

        expected_output = ["a", 2, 3]

        expect(ttt_board1.left_diagonal).to eq(expected_output)
      end
      
      it "returns the spaces in the left diagonal" do
        ttt_board2.set_space(0, "a")
        ttt_board2.set_space(5, 2)
        ttt_board2.set_space(10, 3)
        ttt_board2.set_space(15, 4)


        expected_output = ["a", 2, 3, 4]

        expect(ttt_board2.left_diagonal).to eq(expected_output)
      end
    end

    describe "right_diagonal" do
      it "returns the spaces in the right diagonal" do
        ttt_board1.set_space(2, "a")
        ttt_board1.set_space(4, 2)
        ttt_board1.set_space(6, 3)

        expected_output = ["a", 2, 3]

        expect(ttt_board1.right_diagonal).to eq(expected_output)
      end
      
      it "returns the spaces in the right diagonal" do
        ttt_board2.set_space(3, "a")
        ttt_board2.set_space(6, 2)
        ttt_board2.set_space(9, 3)
        ttt_board2.set_space(12, 4)


        expected_output = ["a", 2, 3, 4]

        expect(ttt_board2.right_diagonal).to eq(expected_output)
      end
    end
  end    
end
