class Dancer

  attr_reader :name
  attr_accessor :age

  def initialize(name, age)
    @name = name
    @age = age
    @card = []
  end

  def pirouette
    return "*twirls*"
  end

  def bow
    return "*bows*"
  end

  def queue_dance_with(partner)
    @partner = partner
    @card.push @partner
  end

  def card
    @card
  end

  def begin_next_dance
    return "Now dancing with #{@card.slice!(0)}."
  end

#Create a method to make dancer breakdance.
  def breakdance
    return "*breakdances*"
  end

end

dancer = Dancer.new("Misty Copeland", 33)

# p dancer.name
# p dancer.age
# p dancer.age = 34
# p dancer.age
# p dancer.pirouette
# p dancer.bow

# dancer.queue_dance_with("Sammy")
# p dancer.card
# dancer.queue_dance_with("Boris")
# p dancer.card
# dancer.begin_next_dance
# p dancer.card
