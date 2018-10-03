class Card

  REAL_VALUES = {
    2 => "Two"
    3 => "Three"
    4 => "Four"
    5 => "Five"
    6 => "Six"
    7 => "Seven"
    8 => "Eight"
    9 => "Nine"
    10 => "Ten"
    11 => "Jack"
    12 => "Queen"
    13 => "King"
    14 => "Ace"
  }

  SUITS = [
    Diamonds,
    Clubs,
    Hearts,
    Spades
  ]

  attr_accessor :value, :suit

  def initialize(value, suit)
    @value = value
    @suit = suit
  end

  def to_s
    REAL_VALUES(self.value)
  end

end
