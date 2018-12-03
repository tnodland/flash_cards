require 'pry'
require './lib/card'
require './lib/turn'
require './lib/deck'
require './lib/round'





card_1 = Card.new("What stat does jolly nature raise?", "speed", :pokemon)
card_2 = Card.new("What stat does adamant nature raise?", "attack", :pokemon)
card_3 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
card_4 = Card.new("What is the capital of Colorado?", "Denver", :Geography)
cards = [card_1, card_2, card_3, card_4]
deck = Deck.new(cards)
round = Round.new(deck)
round.start(cards)
puts "You are on turn #{round.current_turn} out of #{cards.count}"
puts cards.first.question
round.take_turn(gets.chomp)
puts "You are on turn #{round.current_turn} out of #{cards.count}"
puts cards.first.question
round.take_turn(gets.chomp)
puts "You are on turn #{round.current_turn} out of #{cards.count}"
puts cards.first.question
round.take_turn(gets.chomp)
puts "You are on turn #{round.current_turn} out of #{cards.count}"
puts cards.first.question
round.take_turn(gets.chomp)
puts "You were #{round.percent_correct}% correct!"


# puts "Welcome, you're playing with #{cards.count} cards"
# puts "----------------------------------------------------"
# puts "#{card_1.question}"
# answer = gets.chomp
# puts round.feedback
