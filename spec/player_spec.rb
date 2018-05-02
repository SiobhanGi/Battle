require 'player'

RSpec.describe Player do
  subject(:player) { Player.new('Luke')}

  describe '#name' do
    it 'returns name of player' do
      expect(player.name).to eq 'Luke'
    end
  end
  
end
