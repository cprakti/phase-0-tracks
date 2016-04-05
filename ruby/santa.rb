class Santa
  attr_reader :gender, :ethnicity
  attr_accessor :age, :reindeer_ranking, :get_mad_at

  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = (0...140).to_a.sample
    puts "This santa identifies as #{@gender} and #{@ethnicity} and is #{@age} years old."
  end

  def speak
    puts "Ho, ho, ho! Haaaappy Hollidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie} cookie!"
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at=(mad)
    reindeer_ranking.delete(mad)
    reindeer_ranking.push(mad)
  end

  # def reindeer_ranking
  #   @reindeer_ranking
  # end

  # def gender
  #   @gender
  # end

  # def ethnicity
  #   @ethnicity
  # end

end

# santas = []
# sample_ethn = ["black", "Latino", "white", "Japanese", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# sample_gend = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# sample_ethn.length.times do |i| santas << Santa.new(sample_ethn[i], sample_gend[i]) end


# santa = Santa.new("male", "white")
# puts "Santa identifies as #{santa.gender}."
# puts "Santa's ethnicity is #{santa.ethnicity}."
# santa.age = 40
# puts "Santa is now #{santa.celebrate_birthday} years old."
# puts "Santa's current reindeer order is #{santa.reindeer_ranking}."
# santa.get_mad_at = "Cupid"
# puts "Santa's new reindeer order is #{santa.reindeer_ranking}."


santas = []
sample_ethn = ["black", "Latino", "white", "Japanese", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
sample_gend = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
100.times do
  santas << Santa.new(sample_ethn.sample, sample_gend.sample)
end