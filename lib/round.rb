require 'pry'
require './lib/card'
require './lib/turn'
require './lib/deck'


class Round
  attr_reader :deck, :turns

  def initialize(deck = [])
    @deck = deck
    @turns = []
  end

  def take_turn
    new_turn = Turn.new(@guess, @card)
    @turns << new_turn
    return turns
  end
end
