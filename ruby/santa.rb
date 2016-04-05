class Santa
  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    puts "This santa identifies as #{@gender} and #{@ethnicity}."
  end

  def speak
    puts "Ho, ho, ho! Haaaappy Hollidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie} cookie!"
  end

  @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]

  @age = 0
end

santas = []
sample_ethn = ["black", "Latino", "white", "Japanese", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
sample_gend = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
sample_ethn.length.times do |i| santas << Santa.new(sample_ethn[i], sample_gend[i]) end

p santas