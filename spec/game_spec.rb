require 'game'

describe Game do

  let(:player) { double :player }
  let(:computer) { double :computer }
  subject(:game) { described_class.new(player) }

  describe '#player' do
    it 'has a player' do
      expect(game.player).to eq player
    end
  end

  describe '#check_winner' do
    it 'confirms if player won the game' do
      # new_game = Game.new(player)
      allow(game.computer).to receive(:weapon).and_return('Scissors')
      allow(game.player).to receive(:weapon).and_return('Rock')
      expect(game.game_winner).to eq 'You win!'
    end

    it 'confirms if computer won the game' do
      # new_game = Game.new(player)
      allow(game.computer).to receive(:weapon).and_return('Paper')
      allow(game.player).to receive(:weapon).and_return('Rock')
      expect(game.game_winner).to eq 'Computer wins!'
    end

    it 'confirms if there is a draw' do
      # new_game = Game.new(player)
      allow(game.computer).to receive(:weapon).and_return('Paper')
      allow(game.player).to receive(:weapon).and_return('Paper')
      expect(game.game_winner).to eq "Draw"
    end
  end
end
