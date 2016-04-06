module Shout
  def self.yell_angrily(words)
    puts words + "!!!" + " :("
  end

  def self.yell_happily(words)
    puts words + "!" + " :)"
  end
end


Shout.yell_angrily("Kaiser Permanente")

Shout.yell_happily("Huzzah")