require 'board'

class TicTacToeBoard < Board

  def rows
    @spaces.each_slice(width).to_a
  end

  def columns
    rows.transpose
  end

  def left_diagonal
    (0..width-1).map {|i| rows[i][i]}
  end

  def right_diagonal
    (0..width-1).map {|i| rows[i][width-i-1]}
  end

end