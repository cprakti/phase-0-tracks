alias_hash = {}
puts "\n"
puts "Welcome to the alias creator. Make as many aliases as you would like, and when you are finished type 'exit'.\n\nPress enter to continue."
gets
user_resp = ''
until user_resp == 'exit' # Loop until user types exit
  puts "What is your first name?" # Ask spy real's first name
  first = gets.chomp.downcase # Store spy's real first name
  puts "\n"
  puts "What is your last name?" # Ask spy real's last name
  last = gets.chomp.downcase # Store spy's real last name
  puts "\n"
  # Test puts "Your name is #{first} #{last}."
  real_full = first.capitalize + ' ' + last.capitalize

  first, last = last, first # Swap first name and last name
  # Test puts "Your scrambled name is #{first} #{last}."
  first_array = first.split('').to_a # Change string to array
  last_array = last.split('').to_a # Change string to array
  # Test p first_array

  first_array.map! { |letter| letter.tr('aeiou', 'eioua') } # Change vowels to next vowel (aeiou)
  last_array.map! { |letter| letter.tr('aeiou', 'eioua') } # Change vowels to next vowel (aeiou)
  first_array.map! { |letter| letter.tr('bcdfghjklmnpqrstvwxyz', 'cdfghjklmnpqrstvwxyzb')} # Change consonants to next consonant
  last_array.map! { |letter| letter.tr('bcdfghjklmnpqrstvwxyz', 'cdfghjklmnpqrstvwxyzb')} # Change consonants to next consonant

  alias_first = first_array.join # Join arrays back to string
  alias_last = last_array.join # Join arrays back to string
  alias_full = alias_first.capitalize + " " + alias_last.capitalize # Create capitalized version of full alias

  puts "Your new alias is #{alias_full}"
  puts "\n"
  puts "Press enter to create a new alias or type 'exit' to quit."
  user_resp = gets.chomp.downcase
  puts "\n"

  alias_hash[real_full] = alias_full
end

puts "Here are the aliases you created:"
alias_hash.each {|real_full, alias_full| puts "#{real_full} is #{alias_full}." }