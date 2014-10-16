class Board

  attr_reader :width, :spaces

  def initialize(width)
    @width = width
    @spaces = [nil] * number_of_spaces
  end

  def number_of_spaces
    @width ** 2
  end  
    
  def set_space(space, token)
    if space_taken?(space)
      raise space_taken_error
    elsif space_invalid?(space)
      raise space_invalid_error
    else
      @spaces[space] = token
    end
  end

  def space_taken_error
    ArgumentError.new("Space is taken")
  end  

  def space_invalid_error
    ArgumentError.new("Invalid space")
  end  

  def get_space(space)
    @spaces[space]
  end

  def space_taken?(space)
    get_space(space) != nil
  end

  def space_invalid?(space)
    space >= number_of_spaces
  end  

end

