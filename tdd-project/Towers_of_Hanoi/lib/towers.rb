class Towers
attr_accessor :rods, :discs

  def initialize(num_discs = 3, num_rods = 3)
    @rods = Array.new(num_rods) { Array.new() }
    @discs = (1..num_discs).to_a.reverse
    self.rods[0] = discs.dup
  end

  def move(start_pos, end_pos)
    if valid_move?(start_pos, end_pos)
      self.rods[end_pos] << self.rods[start_pos].pop
    end
    return self.rods
  end

  def valid_move?(start_pos, end_pos)
    return false unless in_bounds(start_pos) && in_bounds(end_pos)
    return false unless rod_not_empty?(start_pos)
    !rod_not_empty?(end_pos) || self.rods[end_pos].last > self.rods[start_pos].last
  end

  def in_bounds(pos)
    pos < rods.length && pos >= 0
  end

  def rod_not_empty?(pos)
    self.rods[pos].length > 0
  end

  def won?
    self.rods.drop(1).any? {|r| r == discs}
  end

end
