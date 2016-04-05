class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(x)
    x.times do
      puts "Woof!"
    end
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(y)
    p y * 7
  end

  def paw
    puts "Doggie high-five!"
  end

  def initialize
    puts "Initializing new puppy instance ..."
  end

end

fluffy = Puppy.new

fluffy.fetch("toy")
fluffy.speak(2)
fluffy.roll_over
fluffy.dog_years(3)
fluffy.paw


class Basketball
  def initialize
    puts "Initializing basketball class..."
  end
  def dribble
    puts "Dribbling the basketball."
  end
  def rebound
    puts "Rebound the basketball."
  end
  def three_point(z)
    p z * 3
  end
end

teams = []

50.times do
  warriors = Basketball.new
  teams.push(warriors)
end

teams.each { |warriors| warriors.rebound }
teams.each { |warriors| warriors.dribble }
teams.each { |warriors| warriors.three_point(5) }