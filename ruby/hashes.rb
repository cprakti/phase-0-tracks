#Allow Interior Designer to enter details of a client: client's name, age, number of children, decor theme, etc. Need mix of strings, integers, and booleans

#Keys should be symbols

#1. Prompt the designer/user for all of the above information.
#2. Convert any user input to the appropriate data type
#3. Print the hash back out to the screen when the designer has answered all of the questions.
#4. Give the user the opportunity to update a key

puts "New client information"
client_info = Hash.new
puts "Client's first name:"
client_info[:first] = gets.chomp
puts "Client's last name:"
client_info[:last] = gets.chomp
puts "Client's age:"
client_info[:age] = gets.chomp.to_i
puts "Client's desired decor theme:"
client_info[:decor] = gets.chomp
puts "Does client want a pool:"
pool = gets.chomp.downcase
  if pool == "yes"
    client_info[:pool] = true
  else
    client_info[:pool] = false
  end
p client_info
puts "Would you like to change any data?"
change_data = gets.chomp.downcase
  if change_data == "yes"
    client_info.each {|key, value| puts "#{key} is #{value}"}
    puts "What would you like to update?"
    upd_val = gets.chomp.downcase.to_sym
    puts "Please enter the new value."
    client_info[upd_val] = gets.chomp
    puts "Client data has been updated."
  else
    puts "Client data has been saved."
  end
p client_info
