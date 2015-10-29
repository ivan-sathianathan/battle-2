require 'player'

describe Player do
  let(:ivan) {described_class.new(:ivan)}
  let(:aaron) {described_class.new(:aaron)}

  describe '#name' do
    it 'should return players name' do
      expect(ivan.name).to eq :ivan
    end
  end

  describe '#hit_points' do
    it 'returns hit points' do
      expect(ivan.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

end
