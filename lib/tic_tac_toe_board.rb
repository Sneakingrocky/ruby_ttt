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

  def combined_diagonals
    [left_diagonal, right_diagonal]
  end  

  def pontential_winning_combos
    rows + columns + combined_diagonals
  end  

  def game_has_winner?
    pontential_winning_combos.each do |combo|
      if spaces_occupied_by_one_player?(combo)
        return true
      end  
    end
    return false
  end

  def spaces_occupied_by_one_player?(combo)
    combo.each do |value|
      if value != combo.first || value == nil
        return false  
      end    
    end
    return true  
  end  
end