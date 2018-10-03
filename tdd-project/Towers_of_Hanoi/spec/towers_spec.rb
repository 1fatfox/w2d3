require "rspec"
require "game"
require "towers"


describe Towers do
  describe "#move" do
    subject(:our_tower) {Towers.new }
    before do
      our_tower.rods = [[3], [], [2, 1]]
    end

    it "does not move out of bounds" do
      expect(our_tower.move(0,4)).to eq([[3], [], [2, 1]])
    end

    it "does not move from an empty rod" do
      expect(our_tower.move(1,0)).to eq([[3], [], [2, 1]])
    end

    it "does not move larger discs onto smaller discs" do
      expect(our_tower.move(0,2)).to eq([[3], [], [2, 1]])
    end

    it "moves as as expected" do
      expect(our_tower.move(0, 1)).to eq([[], [3], [2, 1]])
    end
  end

  describe "#won?" do
    subject(:our_tower) {Towers.new}

    it "doesn't throw false positive" do
      our_tower.rods = [[3,2,1], [], []]
      expect(our_tower.won?).to eq(false)

      our_tower.rods = [[3,2], [1], []]
      expect(our_tower.won?).to eq(false)
    end
    it "checks winning condition" do
      our_tower.rods = [[], [], [3,2,1]]
      expect(our_tower.won?).to eq(true)

      our_tower.rods = [[], [3,2,1], []]
      expect(our_tower.won?).to eq(true)
    end
  end
end
