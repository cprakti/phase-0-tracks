# An encrypt method that advances every letter of a string one letter forward.

# Asks a secret agent (the user) whether they would like to decrypt or encrypt a password
# Asks them for the password
# Conducts the requested operation, prints the result to the screen, and exits

def interface
  puts "Would you like to encrypt or decrypt? "
  answer = gets.chomp.downcase

  puts "Enter your password: "
  password = gets.chomp
  if answer == "encrypt"
    puts encrypt(password)
  elsif answer == "decrypt"
    puts decrypt(password)
  else
    interface
  end
end

def encrypt(word)
  index = 0
  alphabet_uppercase = ("A".."Z").to_a
  alphabet_lowercase = ("a".."z").to_a
  alphabet = alphabet_lowercase + alphabet_uppercase
  encrypted_word = ""
  while index < word.length
    if word[index] == " "
      encrypted_word += " "
    else
      desired_index = alphabet.index(word[index]) + 1
      if word[index] == "z"
        encrypted_word += alphabet[0]
      elsif word[index] == "Z"
        encrypted_word += alphabet[26]
      else
        encrypted_word += alphabet[desired_index]
      end
    end
    index += 1
  end
  encrypted_word
end

# A decrypt method that reverses the process above.

def decrypt(word)
  index = 0
  alphabet_uppercase = ("A".."Z").to_a
  alphabet_lowercase = ("a".."z").to_a
  alphabet = alphabet_lowercase + alphabet_uppercase
  decrypted_word = ""
  while index < word.length
    if word[index] == " "
      decrypted_word += " "
    else
      desired_index = alphabet.index(word[index]) - 1
      decrypted_word += alphabet[desired_index]
    end
    index += 1
  end
  decrypted_word
end

interface

