RSpec.describe Game do
  let(:player1) { spy :player }
  let(:player2) { spy :player }
  subject(:game) { Game.new(player1, player2)}
  describe '#player 1' do

    it 'creates an array of players' do
      expect(game.player1).to be player1
    end

  end

  describe '#player 2' do

    it 'creates an array of players' do
      expect(game.player2).to be player2
    end

  end

  describe '#attack_on' do


    it 'causes player to attack other player' do
        game.attack
        expect(player2).to have_received(:hurt)
    end
  end
end
