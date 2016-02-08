class Player
  attr_reader :name, :weapon

  def initialize(name)
    @name = name
  end

  def weapon_choice(choice)
    raise "Not an option." unless ["Rock", "Paper", "Scissors"].include? (choice.capitalize)
    @weapon = choice
  end
end
