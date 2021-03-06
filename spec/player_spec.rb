require 'player'

describe Player do

  subject(:player) { described_class.new("Matthew") }

  describe "#name" do
    it 'returns player name' do
      expect(player.name).to eq "Matthew"
    end
  end

  describe "#choice" do
    it 'returns player choice' do
      expect(player.weapon_choice("Scissors")).to eq "Scissors"
    end

    it 'Should raise an error if weapon is not R, P or S.' do
      expect{player.weapon_choice("Raygun")}.to raise_error "Not an option."
    end
  end
end
