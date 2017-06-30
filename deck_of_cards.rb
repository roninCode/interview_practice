class Deck

end

class Suit < Deck
  attr_accessor :spades, :hearts, :clubs, :diamonds
  def initialize 
    @spades = (1..13).to_a
    @hearts = (1..13).to_a
    @clubs = (1..13).to_a
    @diamonds = (1..13).to_a
  end
end

class Cards < Suit
  def have_spades
    p @spades
  end
  # @spades.each do |card|
  #   if card == 1
  #     @named_spades << "ace"
  #   elsif (2..10).to_a.include?(card)
  #     @named_spades << card.to_s
  #   elsif card == 11 
  #     @named_spades << "jack"
  #   elsif card == 12
  #     @named_spades << "queen"
  #   elsif card == 13
  #     @named_spades << "king"
  #   end
  # end
end
suit = Suit.new
p suit.spades.count
p suit.hearts.count
p suit.clubs.count
p suit.diamonds.count
p suit.have_spades