class Player
  DEFAULT_HIT_POINTS = 100

  attr_reader :name, :hit_points


  def initialize(name)
    @name = name
    @hit_points = DEFAULT_HIT_POINTS
  end

  def cause_damage
    self.hit_points -= 20
  end

  private

  attr_writer :hit_points

end
