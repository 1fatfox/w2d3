
class Array

  def remove_dups
    removed = []
    self.each { |el| removed << el unless removed.include?(el) }
    removed
  end

  def two_sum
    sums = []
    (0...length - 1).each do |i|
      (i + 1...length).each { |j| sums << [i, j] if self[i] + self[j] == 0 }
    end
    sums
  end

  def stock_picker
    greatest_profit = 0
    pair = []

    (0...length - 1).each do |i|
      (i + 1...length).each do |j|
        difference = self[j] - self[i]
        if difference > greatest_profit
          pair = [i,j]
          greatest_profit = difference
        end
      end
    end
    pair
  end

end

def my_transpose(matrix1)
  rows = matrix1.length
  cols = matrix1[0].length
  matrix2 = Array.new(cols) { Array.new(rows) }
  (0...rows).each do |i|
    (0...cols).each { |j| matrix2[j][i] = matrix1[i][j] }
  end
  matrix2
end

def stock_picker(prices)
  #buy on lowest prices[i]
  #sell on highest prices[j]
  #i < j

end
