require 'player'

describe Player do
  subject(:bob) { Player.new('Bob') }
  subject(:alice) { Player.new('Alice') }

  describe '#name' do
    it "Returns a player's name" do
      expect(bob.name).to eq 'Bob'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(bob.hit_points).to eq(described_class::DEFAULT_HIT_POINTS)
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { alice.receive_damage }.to change { alice.hit_points }.by(-10)
    end
  end
end
