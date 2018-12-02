require 'pry'
require './lib/card'
require './lib/turn'
require './lib/deck'


class Round
  attr_reader :deck, :turns, :number_correct

  def initialize(deck = [])
    @deck = deck
    @turns = []
    @number_correct = 0
  end

  def current_card
    deck.cards.first
  end

  def take_turn(guess)
    new_turn = Turn.new(guess, current_card)
    @turns << new_turn
    @deck.cards.shift
    new_turn
  end


end
