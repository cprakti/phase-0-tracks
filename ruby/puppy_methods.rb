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

end

fluffy = Puppy.new

fluffy.fetch("toy")
fluffy.speak(2)
fluffy.roll_over
fluffy.dog_years(3)
fluffy.paw