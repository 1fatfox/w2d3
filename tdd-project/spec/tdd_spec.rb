require "rspec"
require "tdd"

describe Array do
  describe "#remove_dups" do
    it "removes one duplicate" do
      expect([1, 1, 2].remove_dups).to eq([1, 2])
    end

    it "removes two duplicates" do
      expect([1, 1, 2, 2, 2, 3].remove_dups).to eq([1, 2, 3])
    end

    it "removes many duplicates" do
      expect([1, 1, 2, 1, 1, 2, 1, 1, 2, 1, 1, 2, 3, 3, 3, 3].remove_dups).to eq([1, 2, 3])
    end

    it "doesn't do anything if no duplicates" do
      expect([].remove_dups).to eq([])
      expect([1,2,3].remove_dups).to eq([1,2,3])
    end
  end

  describe "#two_sum" do
    it "returns empty array if no pairs are found" do
      expect([].two_sum).to eq([])
    end
    it "returns indices of two elements that sum to zero" do
      expect([-1, 0, 1].two_sum).to eq([[0,2]])
    end
  end

  describe "#stock_picker" do
    it "returns empty array if no pairs are found" do
      expect([91204,9241,9211,9000,4429].stock_picker).to eq([])
    end
    it "returns most profitable pair" do
      expect([1000,1201,4921,30,40,901].stock_picker).to eq([0,2])
    end
  end

end

describe "#my_transpose" do
  it "properly transposes a square matrix"  do
    a = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
    ]
    b = [
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8]
    ]
    expect(my_transpose(a)).to eq(b)
  end

  it "properly transposes a rectangular matrix"  do
    a = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [9, 10, 11]
    ]
    b = [
    [0, 3, 6, 9],
    [1, 4, 7, 10],
    [2, 5, 8, 11]
    ]
    expect(my_transpose(a)).to eq(b)
  end
end

# describe "#"
