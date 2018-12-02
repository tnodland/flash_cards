require 'pry'
require './lib/card'
require './lib/round'
class Turn
  attr_reader :guess, :card

  def initialize (guess, card)
    @guess = guess
    @card = card
  end

  def correct?
    @guess == card.answer
  end

  def feedback
    if correct? == true
      return "Correct!"
      @number_correct += 1
    else
      return "Incorrect"
   end
 end
end
