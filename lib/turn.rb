require 'pry'
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
    @guess == card.answer
  end

  def feedback
    if correct? == true
      puts "Correct!"
    else
      puts "Incorrect"
   end
 end
end