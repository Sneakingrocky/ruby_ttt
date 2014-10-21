require 'tic_tac_toe_board'

describe TicTacToeBoard do
  let (:board_3x3) { TicTacToeBoard.new(3) }
  let (:board_4x4) { TicTacToeBoard.new(4) }


  describe "create TicTacToe Board" do
    
    describe "rows and columns" do
      
      it "creates rows and columns for a 3x3 board" do
        board_3x3.set_space(0, 1)
        board_3x3.set_space(1, 2)
        board_3x3.set_space(2, 3)
        board_3x3.set_space(3, 4)
        board_3x3.set_space(4, 5)
        board_3x3.set_space(5, 6)
        board_3x3.set_space(6, 7)
        board_3x3.set_space(7, 8)
        board_3x3.set_space(8, 9)


        expected_output_rows = [[1, 2, 3], 
                                [4, 5, 6], 
                                [7, 8, 9]]

        expected_output_columns = [[1, 4, 7], 
                                   [2, 5, 8], 
                                   [3, 6, 9]]                        



        expect(board_3x3.rows).to eq(expected_output_rows)
        expect(board_3x3.columns).to eq(expected_output_columns)
      end
      
      it "creates rows and columns for a 4x4 board" do
        board_4x4.set_space(0, 1)
        board_4x4.set_space(1, 2)
        board_4x4.set_space(2, 3)
        board_4x4.set_space(3, 4)
        board_4x4.set_space(4, 5)
        board_4x4.set_space(5, 6)
        board_4x4.set_space(6, 7)
        board_4x4.set_space(7, 8)
        board_4x4.set_space(8, 9)
        board_4x4.set_space(9, 10)
        board_4x4.set_space(10, 11)
        board_4x4.set_space(11, 12)
        board_4x4.set_space(12, 13)
        board_4x4.set_space(13, 14)
        board_4x4.set_space(14, 15)
        board_4x4.set_space(15, 16)
       

        expected_output_rows = [[1, 2, 3, 4], 
                                [5, 6, 7, 8], 
                                [9, 10, 11, 12],
                                [13, 14, 15, 16]]

        expected_output_columns = [[1, 5, 9, 13], 
                                   [2, 6, 10, 14], 
                                   [3, 7, 11, 15],
                                   [4, 8, 12, 16]]                           

        expect(board_4x4.rows).to eq(expected_output_rows)
        expect(board_4x4.columns).to eq(expected_output_columns)
      end
    end

    describe "left_diagonal" do
      it "returns the spaces in the left diagonal" do
        board_3x3.set_space(0, "a")
        board_3x3.set_space(4, 2)
        board_3x3.set_space(8, 3)

        expected_output = ["a", 2, 3]

        expect(board_3x3.left_diagonal).to eq(expected_output)
      end
      
      it "returns the spaces in the left diagonal" do
        board_4x4.set_space(0, "a")
        board_4x4.set_space(5, 2)
        board_4x4.set_space(10, 3)
        board_4x4.set_space(15, 4)


        expected_output = ["a", 2, 3, 4]

        expect(board_4x4.left_diagonal).to eq(expected_output)
      end
    end

    describe "right_diagonal" do
      it "returns the spaces in the right diagonal" do
        board_3x3.set_space(2, "a")
        board_3x3.set_space(4, 2)
        board_3x3.set_space(6, 3)

        expected_output = ["a", 2, 3]

        expect(board_3x3.right_diagonal).to eq(expected_output)
      end
      
      it "returns the spaces in the right diagonal" do
        board_4x4.set_space(3, "a")
        board_4x4.set_space(6, 2)
        board_4x4.set_space(9, 3)
        board_4x4.set_space(12, 4)


        expected_output = ["a", 2, 3, 4]

        expect(board_4x4.right_diagonal).to eq(expected_output)
      end
    end
  
   describe "game_has_winner?" do

      it "returns true when there are 3 identical tokens in a row" do
        board_3x3.set_space(0, "x")
        board_3x3.set_space(1, "x")
        board_3x3.set_space(2, "x")

        expect(board_3x3.game_has_winner?).to eq(true)
      end

      it "returns false when there are not 3 identical tokens in a row" do
        board_3x3.set_space(0, "x")
        board_3x3.set_space(1, "x")
        board_3x3.set_space(2, "o")

        expect(board_3x3.game_has_winner?).to eq(false)
      end

      it "returns true when there are 3 identical tokens in a column" do
        board_3x3.set_space(0, "o")
        board_3x3.set_space(3, "o")
        board_3x3.set_space(6, "o")

        expect(board_3x3.game_has_winner?).to eq(true)
      end  

      it "returns false when there are not 3 identical tokens in a row" do
        board_3x3.set_space(0, "o")
        board_3x3.set_space(3, "x")
        board_3x3.set_space(6, "o")

        expect(board_3x3.game_has_winner?).to eq(false)
      end  

      it "returns true when there are 3 identical tokens in a diagonal" do
        board_3x3.set_space(0, "x")
        board_3x3.set_space(4, "x")
        board_3x3.set_space(8, "x")

        expect(board_3x3.game_has_winner?).to eq(true)
      end  

      it "returns false when there are not 3 identical tokens in a diagonal" do
        board_3x3.set_space(0, "o")
        board_3x3.set_space(4, "x")
        board_3x3.set_space(8, "x")

        expect(board_3x3.game_has_winner?).to eq(false)
      end  
    end    
  end
end  
