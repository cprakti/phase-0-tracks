# Create class
# Create initialize method
#   Add attribute
#   Add attribute
#   Add attribute
# Create method
# Create method with argument

class Superhero
  attr_reader
  attr_accessor :cape, :super_first, :super_last

  def initialize(super_first, super_last)
    @super_first = super_first
    @super_last = super_last
    @cape = ["no cape", "a cape"].sample
    puts "Arise #{@super_first} #{@super_last}."
    puts "You have #{@cape}."
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

    # 5.times do
    #   super_heroes << Superhero.new(samp_first.sample, samp_last.sample)
    # end

    # adam_jones = Superhero.new(samp_first.sample, samp_last.sample)
    # adam_jones.fly
    # adam_jones.catch_bad_guy(39)
    # adam_jones.super_first = "Ultra"
    # adam_jones.cape = "Cape got caught in the door."
    # p adam_jones.cape
    # adam_jones.fly



# Release 2: User Your Class in a Program
# Create interface

user_resp = ''
puts "Welcome to the superhero training facility of Brooklyn. Press enter to continue."
gets
until user_resp == 'Exit'
  my_super = Superhero.new(samp_first.sample, samp_last.sample)
  super_heroes << my_super
  print "\n"
  puts "Would you like to change your superhero identity?"
  name_change = gets.chomp.downcase
  if name_change == "yes"
    puts "What would you like your superhero first name to be?"
    my_super.super_first = gets.chomp.capitalize
    puts "What would you like your superhero last name to be?"
    my_super.super_last = gets.chomp.capitalize
  end
  puts "Remember, #{my_super.super_first} #{my_super.super_last}, with great power comes great responsibility."
  print "\n"
  puts "Breaking news: a bank in your neighborhood is being robbed.  What are you going to do - fly away or catch the bad guys?"
  user_action = gets.chomp.downcase
  if user_action.start_with?("f")
    my_super.fly
    puts "You coward."
  elsif user_action.start_with?("c")
    puts "There are 5 bad guys at the bank.  How many are you going to catch?"
    user_catch = gets.chomp.to_i
    my_super.catch_bad_guy(user_catch)
    puts "You're a hero!"
  else
    puts "They got away because you hesitated. Fortune favors the bold."
  end
  print "\n"
  puts "Press enter to make another super hero identity or type 'exit' to quit."
  user_resp = gets.chomp.capitalize
end

super_heroes.each do |superhero|
  puts "#{superhero.super_first} #{superhero.super_last} had #{superhero.cape}."
end