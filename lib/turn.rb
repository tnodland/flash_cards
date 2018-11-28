require './lib/card'

class Turn
  attr_reader :guess, :card

  def initialize (guess, card)
    @guess = guess
    @card = card
  end

  def guess
guess = gets.chomp
  end

  def correct?
    ua = guess.downcase
  end

  def feedback
    if ua == answer
      puts "Correct!"
    else
      puts "Incorrect"
