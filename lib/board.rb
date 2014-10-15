class Board

  attr_reader :width

  def initialize(width)
    @width = width
    @spaces = []
  end
  
  def set_space(space, token)
    if space_taken?(space)
      raise ArgumentError.new("Space is taken")
    else
      @spaces[space] = token
    end
  end

  def get_space(space)
    @spaces[space]
  end

  def space_taken?(space)
    get_space(space) != nil
  end

end
