require 'pry'
require './lib/card'
require './lib/turn'
require './lib/deck'


class Round
  attr_reader :deck, :turns

  def initialize(deck = [])
    @deck = deck
  end

  def turns
    turns = []
  end

end
