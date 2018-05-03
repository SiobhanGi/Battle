RSpec.describe Player do
  describe '#name' do
    subject(:player) { Player.new('Luke') }
    let(:player_anon) { Player.new }

    it 'returns name' do
      expect(player.name).to eq "Luke"
    end
    it 'returns default name' do
      expect(player_anon.name).to eq "anon"
    end
  end
end
