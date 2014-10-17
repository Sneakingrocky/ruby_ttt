require 'board'

class TicTacToeBoard < Board

  def rows
    @spaces.each_slice(width).to_a
  end  

  def columns
    rows.transpose
  end  

end  