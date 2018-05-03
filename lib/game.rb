class Game

  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @players = [@player1, @player2]
  end

  def attack_on(player)
    player.hurt
  end

  def switch_turn
    @players.rotate!
  end

  def current_player
    @players.first
  end

end
