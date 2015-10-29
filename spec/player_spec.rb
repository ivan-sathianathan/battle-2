require 'player'

describe Player do
  let(:ivan){described_class.new(:ivan)}

  it 'should return players name' do
    expect(ivan.name).to eq :ivan
  end
end
