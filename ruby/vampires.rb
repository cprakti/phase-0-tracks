puts "What is your first and last name?"
full = gets.chomp.downcase
puts full


puts "How old will you be on Dec 31st, 2016?"
age = gets.chomp.to_i

puts "In what year were you born?"
year = gets.chomp.to_i
num = 2016 - year


puts "Our cafeteria makes some fantastic garlic bread.  Would you like me to order you some?"
  gar_answer = gets.chomp.downcase
  if gar_answer == "yes"
    garlic = true
  elsif gar_answer == "no"
    garlic = false
  else
  end

puts "Would you like to enroll in the company health insurance plan?"
  ins_answer = gets.chomp.downcase
  if ins_answer == "yes"
    insurance = true
  else
    insurance = false
  end

#    puts full
#    puts age
#    puts num
#    puts gar_answer
#    puts garlic
#    puts ins_answer
#    puts insurance


if age == num && (garlic == true || insurance == true) && !(full == "tu fang" || full == "drake cula")
    puts "Probably not a vampire."
elsif age != num && !(garlic == true && insurance == true) && !(garlic == false && insurance == false) && !(full == "tu fang" || full == "drake cula")
    puts "Probably a vampire."
elsif (age != num && garlic != true && insurance != true) && !(full == "tu fang" || full == "drake cula")
    puts "Almost certainly a vampire."
elsif  (full == "tu fang" || full == "drake cula")
    puts "Definitely a vampire."
else
    puts "Not sure"
end