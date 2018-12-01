require 'minitest/autorun'
require 'minitest/pride'
require './lib/deck'
require './lib/card'

class DeckTest < Minitest::Test

    def test_it_exists
      deck = Deck.new([])

      assert_instance_of Deck, deck
    end

    def test_it_holds_cards
      card_1 = Card.new("What stat does jolly nature raise?", "speed", :pokemon)
      card_2 = Card.new("What stat does adamant nature raise?", "attack", :pokemon)
      cards = [card_1, card_2]
      deck = Deck.new(cards)
      assert_equal cards, deck.cards
    end

    def test_deck_knows_categories
      card_1 = Card.new("What stat does jolly nature raise?", "speed", :pokemon)
      card_2 = Card.new("What stat does adamant nature raise?", "attack", :pokemon)
      cards = [card_1, card_2]
      deck = Deck.new(cards)
      assert_equal deck.cards_in_category(:pokemon), cards
    end

    def test_deck_knows_multpile_categories
      card_1 = Card.new("What stat does jolly nature raise?", "speed", :pokemon)
      card_2 = Card.new("What stat does adamant nature raise?", "attack", :pokemon)
      card_3 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
      cards = [card_1, card_2, card_3]
      deck = Deck.new(cards)
      assert_equal deck.cards_in_category(:pokemon), [card_1, card_2]
      assert_equal deck.cards_in_category(:Geography), [card_3]
    end

end
