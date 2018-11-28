require 'pry'
require './lib/card'
require './lib/turn'

class Deck
  attr_reader :card, :deck

  def initialize(card, deck)
    @card = card
    @deck = []
      end
      
end
