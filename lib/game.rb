class Game

  attr_reader :player1, :player2
  attr_accessor :attacked_player, :attacking_player

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @attacked_player = player2
    @attacking_player = player1
  end

  def attack(player)
    player.cause_damage
  end

  def switch_turn
    self.attacked_player,self.attacking_player = self.attacking_player,self.attacked_player
  end


end
