class Player
  attr_reader :name, :health
  PAIN = 10
  HEALTH = 100

  def initialize(name='anon', health = HEALTH)
    @name = name
    @health = health
  end

  def hurt
    @health -= PAIN
  end

end
