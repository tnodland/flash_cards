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
end
