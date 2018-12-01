require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/turn'
require './lib/deck'
require './lib/round'


class DeckTest < Minitest::Test

  def test_it_exists
    cards = []
    deck = Deck.new(cards)
    round = Round.new(deck)
    assert_instance_of Round, round
  end

  def test_turns_exists
    cards = []
    deck = Deck.new(cards)
    round = Round.new(deck)
    turns = round.turns
    assert_instance_of Array, round.turns
  end


  def test_take_turn_exists
    cards = []
    deck = Deck.new(cards)
    round = Round.new(deck)
    turn1 = round.take_turn

    assert_instance_of Turn, turn1
  end

  def test_turns_can_hold_a_turn
    cards = []
    deck = Deck.new(cards)
    round = Round.new(deck)
    turn1 = round.take_turn

    assert_equal turns.count, 1
  end


end
