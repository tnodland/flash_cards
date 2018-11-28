class Card
  attr_reader :question, :answer, :category

  def initialize (question, answer, category)
    @question = question
    @answer = answer
    @category = category

 end
end


nature1 = Card.new("What stats does jolly raise?", "speed", "natures")
nature2 = Card.new("What stats does adamant nature raise", "attack", "natures")
