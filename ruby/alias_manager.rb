puts "Welcome to the alias creator. Make as many aliases as you would like, and when you are finished type 'exit'.\nPress any key to continue."
gets
# Test p user_resp = ''
until user_resp == 'exit' # Loop until user types exit
  puts "What is your first name?" # Ask spy real's first name
  first = gets.chomp.downcase # Store spy's real first name
  puts "What is your last name?" # Ask spy real's last name
  last = gets.chomp.downcase # Store spy's real last name
  # Test puts "Your name is #{first} #{last}."

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
  puts "Would you like to make a new alias?"
  # Test p user_resp = gets.chomp.downcase
end