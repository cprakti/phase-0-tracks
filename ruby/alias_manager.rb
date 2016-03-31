# Ask spy real's first name
puts "What is your first name?"
# Store spy's real first name
first = gets.chomp.downcase
# Ask spy real's last name
puts "What is your last name?"
# Store spy's real last name
last = gets.chomp.downcase
# Test
#puts "Your name is #{first} #{last}."
# Swap first name and last name
first, last = last, first
# Test
#puts "Your scrambled name is #{first} #{last}."
# Change vowels to next vowel (aeiou)
first_array = first.split('').to_a
# Test
# p first_array
p first_array.select { |letter| letter =~ /[aeiou]/ }

# Change consonants to next consonant
