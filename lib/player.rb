#inizialize object Player with name, value, points

class Player
  attr_accessor :name, :value

  def initialize(name, value)
    @name = name
    @value = value
  end
end