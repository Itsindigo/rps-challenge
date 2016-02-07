class Player
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def weapon_choice(choice)
    @choice = choice
  end
end
