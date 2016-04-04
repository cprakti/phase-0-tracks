class Santa
  def speak
    puts "Ho, ho, ho! Haaaappy Hollidays!"
  end
  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie} cookie!"
  end
  def initialize
    puts "Initializing Santa instance..."
  end
end

santa1 = Santa.new
santa1.speak
santa1.eat_milk_and_cookies("sugar")