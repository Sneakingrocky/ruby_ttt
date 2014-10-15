class Board

  attr_reader :width

  def initialize(width)
    @width = width
    @spaces = []
  end

  def make_square_board
    @width ** 2
  end  
  
  def set_space(space, token)
    if space_taken?(space)
      space_taken_error
    else
      @spaces[space] = token
    end
  end

  def space_taken_error
    raise ArgumentError.new("Space is taken")
  end  

  def get_space(space)
    @spaces[space]
  end

  def space_taken?(space)
    get_space(space) != nil
  end

end
