class Game

  attr_reader :player, :computer

  WEAPONS = ['Rock', 'Paper', 'Scissors']

  def initialize(player, computer = Computer.new)
    @player = player
    @computer = computer
    @wins = [['Scissors', 'Paper'],
    ['Paper', 'Rock'],
    ['Rock', 'Scissors']]
  end

  def game_winner
    check_winner(result)
  end

  private

  def result
    @result = [@computer.weapon, @player.weapon]
  end

  def check_winner(result)
    return "Draw" if @computer.weapon == @player.weapon
    return "Computer wins!" if @wins.include?(@result)
    return "You win!"
  end
end
