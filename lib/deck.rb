require 'pry'
require './lib/card'


class Deck
  attr_reader :card, :deck, :cards_in_category,

  def initialize(card, deck)
    @card = card
    @deck = []
    @cards_in_category = cards_in_category
  end

  def deck
  end

  def cards_in_category
    @deck.each do |category|

  end

end
