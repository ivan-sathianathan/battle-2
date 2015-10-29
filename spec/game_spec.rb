require 'game'
# require 'player'

describe Game do
  # ivan = Player.new 'ivan'
  # aaron = Player.new 'aaron'
  let(:ivan) {double(:ivan)}
  let(:aaron) {double(:aaron)}
  subject(:game) { Game.new }


  context 'when attacking' do

    it 'damages the player' do
      expect(aaron).to receive (:cause_damage)
      game.attack(aaron)
    end

  end

end