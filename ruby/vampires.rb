puts "What is your first name?"
first = gets.chomp

puts "What is your last name?"
last = gets.chomp

full_name = first + " " + last
puts full_name

puts "How old will you be on Dec 31st, 2016?"
age = gets.chomp.to_i

puts "In what year were you born?"
year = gets.chomp.to_i
num = 2016 - year


puts "Our cafeteria makes some fantastic garlic bread.  Would you like me to order you some?"
  gar_answer = gets.chomp
  if gar_answer == "yes" || "Yes"
    garlic = true
  else
    garlic = false
  end

puts "Would you like to enroll in the company health insurance plan?"
  ins_answer = gets.chomp
  if ins_answer == "yes" || "Yes"
    insurance = true
  else
    insurance = false
  end

if ((age == num) && (garlic == true))
  puts "Probably not a vampire."
elsif ((age != num) && ((garlic == false) || (insurance == false)))
  puts "Probably a vampire."
elsif ((age != num) && ((garlic == false) && (insurance == false)))
  puts "Almost certainly a vampire."
elsif (full_name == "Drake Cula" || full_name == "Tu Fang")
  puts "Definitely a vampire."
else puts "Results inconclusive."
end