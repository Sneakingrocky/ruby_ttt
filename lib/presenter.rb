require 'delegate'

class Presenter < SimpleDelegator

  def initialize(board)
    super(board)
  end  

  def display_row(row)
    "  " + row.map { |space| display_space(space) }.join(" | ") + " "
  end

  def display_space(space)
    if space.length == 1
      space + " "
    else
      space
    end
  end

  def number_of_dashes
    5 * width
  end

  def make_dashes
    "-" * number_of_dashes 
  end  

  def display_dashes
    "\n" + make_dashes + "\n"
  end 

  def display_board
    a = (0..number_of_spaces-1).map {|index| cell_display_value(index) }

    a.each_slice(width).map {|row| display_row(row)}.join(display_dashes)
  end

  def cell_display_value(cell_number)
    get_space(cell_number) || cell_number.to_s
  end  

end 