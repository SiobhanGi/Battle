class Game

  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @players = [@player1, @player2]
  end

  def attack
    other_player.hurt
  end

  def switch_turn
    @players.rotate!
  end

  def current_player
    @players.first
  end

  private

  def other_player
    @players.last
  end

end
