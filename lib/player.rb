class Player
  attr_reader :name, :assigned_token

  def initialize(name, assigned_token, ui)
    @name = name
    @assigned_token = assigned_token
    @ui = ui
  end
end
