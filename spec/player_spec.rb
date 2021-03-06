RSpec.describe Player, :player do
  subject(:player) { Player.new('Luke') }
  let(:player_anon) { Player.new }

  describe '#name' do
    it 'returns name' do
      expect(player.name).to eq "Luke"
    end
    it 'returns default name' do
      expect(player_anon.name).to eq "anon"
    end
  end

  describe '#health' do
    it 'defaults health to 100' do
      expect(player.health).to eq 100
    end
  end
end
