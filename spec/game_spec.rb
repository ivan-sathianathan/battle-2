require 'game'

describe Game do
  let(:ivan) {double(:ivan)}
  let(:aaron) {double(:aaron)}
  subject(:game) { Game.new(ivan, aaron) }


  context 'retrive players' do
    it '#player1' do
      expect(game.player1).to eq ivan
    end
    it '#player2' do
      expect(game.player2).to eq aaron
    end
  end

  context 'when attacking' do
    it 'damages the player' do
      expect(aaron).to receive (:cause_damage)
      game.attack(aaron)
    end
  end
end
