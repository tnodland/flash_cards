require 'pry'

class Deck
  attr_reader :cards

  def initialize(cards = [])
    @cards = cards
  end


  def cards_in_category(category)
    cat_array = []
    @cards.each do |card|
      if card.category == category
      cat_array << card
      end
    end
  end

end
