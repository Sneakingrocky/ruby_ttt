require 'tic_tac_toe_board'

describe TicTacToeBoard do
  let (:ttt_board1) { TicTacToeBoard.new(3) }
  let (:ttt_board2) { TicTacToeBoard.new(4) }


  describe "create TicTacToe Board" do
    it "creates rows for a 3x3 board" do
      expected_output = [[nil, nil, nil], 
                         [nil, nil, nil], 
                         [nil, nil, nil]] 

      expect(ttt_board1.rows).to eq(expected_output)
    end
    
    it "creates rows for a 4x4 board" do
      expected_output = [[nil, nil, nil, nil], 
                         [nil, nil, nil, nil], 
                         [nil, nil, nil, nil],
                         [nil, nil, nil, nil]] 

      expect(ttt_board2.rows).to eq(expected_output)
    end

  end    
  
end
