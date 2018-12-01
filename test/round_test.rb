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
    new_turn = round.take_turn

    assert_instance_of Array, new_turn
  end

  def test_turns_can_hold_a_turn
    cards = []
    deck = Deck.new(cards)
    round = Round.new(deck)
    round.take_turn

    assert_instance_of Integer, round.turns.count
  end

  def test_it_can_hold_multiple_turns\
    cards = []
    deck = Deck.new(cards)
    round = Round.new(deck)
    round.take_turn
    round.take_turn

    assert_equal 2, round.turns.count

  end


end
