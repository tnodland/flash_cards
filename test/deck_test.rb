require 'minitest/autorun'
require 'minitest/pride'
require './lib/deck'

class DeckTest < Minitest::Test

    def test_it_exists
      deck = Deck.new

      assert_instance_of Deck, deck
    end

    def test_it_holds_cards
      card_1 = Card.new("What stat does jolly nature raise?", "speed", :pokemon)
      card_2 = Card.new("What stat does adamant nature raise?", "attack", :pokemon)
      deck = Deck.new
      deck << card_1
      deck << card_2
      assert_equal [card_1, card_2], deck.contents
    end
end
