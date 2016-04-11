class Dancer

  attr_reader :name
  attr_accessor :age

  def initialize(name, age)
    @name = name
    @age = age
  end

end

dancer = Dancer.new("Misty Copeland", 33)
p dancer.name
p dancer.age
p dancer.age = 34
p dancer.age