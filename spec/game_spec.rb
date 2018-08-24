require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player }
  let(:player_2) { double :player }

  describe '#attack' do
    it 'damages the player' do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end

  describe '#initialize' do
    it 'returns the two player names' do
      expect(game.player_1).to eq player_1
      expect(game.player_2).to eq player_2
    end
  end
end



# describe "#initialize" do
#   it "returns the number, dish, price, and quantity of an item" do
#     expect(subject.number).to eq "01"
#     expect(subject.dish).to eq "meat curry"
#     expect(subject.price).to eq "6.00"
#     expect(subject.quantity).to eq "2"
#   end
