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

    assert_instance_of Turn, new_turn
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
    skip
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

  def test_multiple_guesses_correct
    card_1 = Card.new("Question", "Answer", :Category)
    card_2 = Card.new("Question2", "Answer2", :Category)
    cards = [card_1, card_2]
    deck = Deck.new(cards)
    round = Round.new(deck)
    round.take_turn("Answer")
    round.take_turn("Answer2")

    assert_equal true, round.turns.first.correct?
    assert_equal true, round.turns.last.correct?
  end

  def test_number_correct_exists
    card_1 = Card.new("Question", "Answer", :Category)
    cards = [card_1]
    deck = Deck.new(cards)
    round = Round.new(deck)

    assert_instance_of Integer, round.number_correct
  end

  def test_turns_can_give_feedback
    card_1 = Card.new("Question", "Answer", :Category)
    cards = [card_1]
    deck = Deck.new(cards)
    round = Round.new(deck)
    round.take_turn("Answer")

    assert_equal "Correct!", round.turns.last.feedback

  end

  def test_number_correct_can_raise
    card_1 = Card.new("Question", "Answer", :Category)
    cards = [card_1]
    deck = Deck.new(cards)
    round = Round.new(deck)
    round.take_turn("Answer")

    assert_equal 1, round.number_correct
  end

  def test_number_correct_can_raise_higher
    card_1 = Card.new("Question", "Answer", :Category)
    card_2 = Card.new("Question2", "Answer2", :Category)
    cards = [card_1, card_2]
    deck = Deck.new(cards)
    round = Round.new(deck)
    round.take_turn("Answer")
    round.take_turn("Answer2")

    assert_equal 2, round.number_correct
  end

  def test_percent_correct_exists
    card_1 = Card.new("Question", "Answer", :Category)
    card_2 = Card.new("Question2", "Answer2", :Category)
    cards = [card_1, card_2]
    deck = Deck.new(cards)
    round = Round.new(deck)
    round.take_turn("Answer")
    round.take_turn("Answer2")

    assert_instance_of Float, round.percent_correct
  end

  def test_percent_correct_is_accurate
    card_1 = Card.new("Question", "Answer", :Category)
    card_2 = Card.new("Question2", "Answer2", :Category)
    cards = [card_1, card_2]
    deck = Deck.new(cards)
    round = Round.new(deck)
    round.take_turn("Answer")
    round.take_turn("Answer2")

    assert_equal 100.0, round.percent_correct
  end

  def test_percent_correct_is_accurate_still
    card_1 = Card.new("Question", "Answer", :Category)
    card_2 = Card.new("Question2", "Answer2", :Category)
    cards = [card_1, card_2]
    deck = Deck.new(cards)
    round = Round.new(deck)
    round.take_turn("Answer")
    round.take_turn("wrong")

    assert_equal 50.0, round.percent_correct
  end
end
