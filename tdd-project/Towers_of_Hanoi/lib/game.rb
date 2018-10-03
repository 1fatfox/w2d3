require_relative "towers"

class Game
attr_reader :towers
  def initialize(towers)
    @towers = towers
  end

  def play
    puts "Towers of Hanoi!"
    until self.towers.won?
      play_turn
    end
    puts "YOU WIN!!!!!!!"
    gets.chomp
  end

  def play_turn
    render
    puts "Where would you like to move from? ex: (0,1,2)"
    start_pos = gets.chomp.scan(/\d/).first.to_i
    puts "Where would you like to move to? ex: (0,1,2)"
    end_pos = gets.chomp.scan(/\d/).first.to_i
    self.towers.move(start_pos, end_pos)
    system('clear')
  end

  def render
    self.towers.rods.each do |r|
      puts r.to_s
    end
  end

end


Game.new(Towers.new).play
