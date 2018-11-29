require 'pry'
require './lib/card'

class Deck
  attr_reader :cards

  def initialize(cards)
    @cards = []
  end

  def contents
    @cards << card
  end
end
