class Player

  attr_reader :name, :hp

  def initialize(name)
    @hp = 100
    @name = name
  end

  def get_hit()
    @hp -= 10
  end

end