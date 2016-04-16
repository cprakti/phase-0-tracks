# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Require_relative allows you to access the information from another file and in the same directory.
# Require allows you to access information with the proper path.

require_relative "state_data"

class VirusPredictor

# Initialize gives an instance a set of locally defined variables when it's created.  In this case, takes arguments and assigns them to instance variables.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end


# This method calls two other methods that use the previously defined instance variables as arguments.  In this case virus_effects gives an estimated number of people lost, white speed_of_spread tells how quickly the virus will spread over time.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

private
# This method takes variables and runs an algorithm that predicts the number of people of will die.  Based on the population_density, the algorithm sorts the incoming hash and returns the number_of_deaths, which is a product of the total population and a constant.
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
# This method is similar to predicted_deaths in that it sorts the incoming hash based on an algorithm.  In this case, there are different speeds that are added to the speed variable depending on which conditional is met.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"
    # We removed the arguments to this method and the predicted_deaths method to make it more DRY. We tried to think of a DRY-er way of writing the alogrithm but couldn't think a better way.
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


STATE_DATA.each do |state,pop_den,pop|
  states = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
  states.virus_effects
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?

# - The first hash contains key values that are names of states and values that are separate hashes.  Inside each value, the second hash contains a key for population density and its corresponding value as well as a key for population, and its corresponding value.

# What does require_relative do? How is it different from require?

# - Require_relative allows you to access code from another file, provided that it is contained in the same directory, with just the name of the file.  Require allows you to access other code as well but you must specify the path to other file.

# What are some ways to iterate through a hash?

# - You can iterate through a hash using .map or .each methods.  You can use "do" and "end" to specify the block or you can use {}.

# When refactoring virus_effects, what stood out to you about the variables, if anything?

# - Because the variables were turned into attributes in the initialize method, they could be accessed within any additional methods without having to be passed in as arguments.

# What concept did you most solidify in this challenge?

# - This challenge helped clarify how to access different keys and values within a hash or a hash of a hash.  It also helped with getting some practice at refactoring.
