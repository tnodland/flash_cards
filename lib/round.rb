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

  def take_turn
    turn1 = Turn.new("guess", 1)

      take_turn.each do |turn|
        turns << turn
      end
    end
end
