puts "What is your name?"
name = gets.chomp

puts "How old will you be on Dec 31st, 2016?"
age = gets.chomp.to_i
puts age

puts "In what year were you born?"
year = gets.chomp.to_i
num = 2016 - year
puts num

puts "Our cafeteria makes some fantastic garlic bread.  Would you like me to order you some?"
  answer = gets.chomp
  if answer == "yes"
    garlic = true
  else
    garlic = false
  end
puts garlic

puts "Would you like to enroll in the company health insurance plan?"
  ins_answer = gets.chomp
  if ins_answer == "yes"
    insurance = true
  else
    insurance = false
  end
puts insurance


if (age == num) && (garlic == true)
  puts "Probably not a vampire."
else
  puts "Guards!"
end
