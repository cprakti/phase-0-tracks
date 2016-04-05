# Create class
# Create initialize method
#   Add attribute
#   Add attribute
#   Add attribute
# Create method
# Create method with argument

class Superhero
  attr_reader :super_last
  attr_accessor :cape, :super_first

  def initialize(super_first, super_last)
    @super_first = super_first
    @super_last = super_last
    @cape = ["has no cape", "has a cape"].sample
    puts "#{@super_first} #{@super_last} #{@cape}."
  end

  def fly
    puts "#{@super_first} #{@super_last} takes flight."
  end

  def catch_bad_guy(number)
    puts "#{@super_first} #{@super_last} caught #{number} bad guys."
  end
end

super_heroes = []
samp_first = ["Super", "Bat", "Wonder", "Cat", "Iron", "Green", "Captain", "Spider"]
samp_last = ["Man", "Woman", "Latern", "America", "Hulk", "Phantom", "Flash", "Hornet"]

5.times do
  super_heroes << Superhero.new(samp_first.sample, samp_last.sample)
end

adam_jones = Superhero.new(samp_first.sample, samp_last.sample)
adam_jones.fly
adam_jones.catch_bad_guy(39)
adam_jones.super_first = "Ultra"
adam_jones.cape = "Cape got caught in the door."
p adam_jones.cape
adam_jones.fly
