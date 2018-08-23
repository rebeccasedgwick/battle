require "player"

describe Player do
  subject(:bob) {Player.new("Bob")}

  describe "#name" do
    it "Returns a player's name" do
      expect(bob.name).to eq "Bob"
    end
  end
end
