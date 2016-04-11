class Dancer

  attr_reader :name
  attr_accessor :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def pirouette
    return "*twirls*"
  end

  def bow
    return "*bows*"
  end

end

dancer = Dancer.new("Misty Copeland", 33)
p dancer.name
p dancer.age
p dancer.age = 34
p dancer.age
p dancer.pirouette
p dancer.bow