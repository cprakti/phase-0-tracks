def alias_creator                           # Create method
  puts "\n"
  puts "Welcome to the alias creator. Make as many aliases as you would like, and when you are finished type 'exit'.\n\nPress enter to continue."
  gets
  user_resp = ''                            # Create user response variable for loop
  alias_hash = {}                           # Create empty hash to store real and alias names
  until user_resp == 'exit'                 # Loop until user types exit
    puts "What is your first name?"         # Ask spy real's first name
    first = gets.chomp.downcase             # Store spy's real first name
    puts "\n"
    puts "What is your last name?"          # Ask spy real's last name
    last = gets.chomp.downcase              # Store spy's real last name
    puts "\n"
                                            # Test puts "Your name is #{first} #{last}."
    real_full = first.capitalize + ' ' + last.capitalize

    first, last = last, first # Swap first name and last name
                                            # Test puts "Your scrambled name is #{first} #{last}."
    first_array = first.split('').to_a      # Change string to array
    last_array = last.split('').to_a        # Change string to array
                                            # Test p first_array
                                            # Change vowels to next vowel (aeiou)
    first_array.map! { |letter| letter.tr('aeiou', 'eioua') }
                                            # Change vowels to next vowel (aeiou)
    last_array.map! { |letter| letter.tr('aeiou', 'eioua') }
                                            # Change consonants to next consonant
    first_array.map! { |letter| letter.tr('bcdfghjklmnpqrstvwxyz', 'cdfghjklmnpqrstvwxyzb')}
                                            # Change consonants to next consonant
    last_array.map! { |letter| letter.tr('bcdfghjklmnpqrstvwxyz', 'cdfghjklmnpqrstvwxyzb')}

    alias_first = first_array.join          # Join arrays back to string
    alias_last = last_array.join            # Join arrays back to string
                                            # Create capitalized version of full alias
    alias_full = alias_first.capitalize + " " + alias_last.capitalize

    puts "Your new alias is #{alias_full}"  # Returns alias name
    puts "\n"
                                            # Prompt user to continue or end loop
    puts "Press enter to create a new alias or type 'exit' to quit."
    user_resp = gets.chomp.downcase         # Store user response for loop
    alias_hash[real_full] = alias_full      # Store real and alias names as key and value in hash
  end
  puts "\n"
  puts "Here are the aliases you created:"  # Print out real names and their respective aliases
  alias_hash.each {|real_full, alias_full| puts "#{real_full}'s alias is #{alias_full}." }
end

alias_creator                               # Call method