# module Shout
#   def self.yell_angrily(words)
#     puts words + "!!!" + " :("
#   end

#   def self.yell_happily(words)
#     puts words + "!" + " :)"
#   end
# end


# Shout.yell_angrily("Kaiser Permanente")

# Shout.yell_happily("Huzzah")

# Release 2

module Shout
  def yell_guttural(words)
    puts "UUUUGGGGGHHHHHAAAAAHHHH!!! " + words
  end

  def yell_surprise(words)
    puts "EEEIIIAAAHHHOOUUU!!! " + words
  end
end

class Loss
  include Shout
end

class Win
  include Shout
end

win = Win.new
win.yell_surprise("Woohoo")

loss = Loss.new
loss.yell_guttural("Nooooo")