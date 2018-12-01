require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/turn'
require './lib/deck'
require './lib/round'


class DeckTest < Minitest::Test

  def test_it_exists
    card_1 = Card.new("Question", "Answer", :Category)
    cards = [card_1]
    deck = Deck.new(cards)
    round = Round.new(deck)

    assert_instance_of Round, round
  end

  def test_turns_exists
    card_1 = Card.new("Question", "Answer", :Category)
    cards = [card_1]
    deck = Deck.new(cards)
    round = Round.new(deck)
    turns = round.turns

    assert_instance_of Array, round.turns
  end


  def test_take_turn_exists
    card_1 = Card.new("Question", "Answer", :Category)
    cards = [card_1]
    deck = Deck.new(cards)
    round = Round.new(deck)
    new_turn = round.take_turn("guess")

    assert_instance_of Array, new_turn
  end

  def test_turns_can_hold_a_turn
    card_1 = Card.new("Question", "Answer", :Category)
    cards = [card_1]
    deck = Deck.new(cards)
    round = Round.new(deck)
    round.take_turn("guess")

    assert_instance_of Integer, round.turns.count
  end

  def test_it_can_hold_multiple_turns
    card_1 = Card.new("Question", "Answer", :Category)
    cards = [card_1]
    deck = Deck.new(cards)
    round = Round.new(deck)
    round.take_turn("guess")
    round.take_turn("guess2")

    assert_equal 2, round.turns.count

  end

  def test_turns_have_guesses
    card_1 = Card.new("Question", "Answer", :Category)
    cards = [card_1]
    deck = Deck.new(cards)
    round = Round.new(deck)
    round.take_turn("guess")

    assert_equal "guess", round.turns.last.guess
  end

  def test_guess_is_correct
    card_1 = Card.new("Question", "Answer", :Category)
    cards = [card_1]
    deck = Deck.new(cards)
    round = Round.new(deck)
    round.take_turn("Answer")

    assert_equal true, round.turns.last.correct?
  end

  def test_guess_is_incorrect
    card_1 = Card.new("Question", "Answer", :Category)
    cards = [card_1]
    deck = Deck.new(cards)
    round = Round.new(deck)
    round.take_turn("Question")

    assert_equal false, round.turns.last.correct?
  end


end
