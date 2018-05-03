RSpec.describe Game do
  describe '#attack_on' do
    let(:player) { spy :player }

    it 'causes player to attack other player' do
        subject.attack_on(player)
        expect(player).to have_received(:hurt)
    end
  end
end
