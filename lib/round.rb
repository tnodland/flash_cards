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
      if new_turn.correct? == true
        @number_correct += 1
      end
    @turns << new_turn
    @deck.cards.shift
    new_turn
  end

  def percent_correct
    (@number_correct.to_f / turns.count.to_f) * 100.0
  end

  # def number_correct_by_category(category)
  #   correct_category = 0
  #     if category.
  #     end
  # end

end
