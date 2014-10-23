require 'delegate'

class Presenter < SimpleDelegator

  def initialize(board)
    super(board)
  end  

  def display_row(row)
    " " + row.map { |space| display_space(space) }.join(" | ") + " "
  end

  def display_space(space)
    if space.length == 1
      space + " "
    else
      space
    end
  end

  def display_dashes
    if width == 3
      "\n--------------\n"
    else
      "\n-------------------\n"    
    end
  end  

  def display_board
    a = (0..number_of_spaces-1).map {|index| cell_display_value(index) }

    a.each_slice(width).map {|row| display_row(row)}.join(display_dashes)
  end

  def cell_display_value(cell_number)
    get_space(cell_number) || cell_number.to_s
  end  

end  