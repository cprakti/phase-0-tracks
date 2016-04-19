# Encrypt
# Prompt user for input and store in variable

# Iterate over string for each letter

# Change each letter forward by one

def encrypt(name)
  name = name.downcase
  array = name.split(//)

  a1 = ("a".."z").to_a
  a2 = ("b".."z").to_a
  a2.push("a")

  h1 = Hash[a1.zip a2]

  array.map! do |x|
    h1[x]
  end

  array = array.join.capitalize
  p array
end

def decrypt(name)
  name = name.downcase
  array = name.split(//)

  a1 = ("b".."z").to_a
  a2 = ("a".."z").to_a
  a1.push("a")

  h1 = Hash[a1.zip a2]

  array.map! do |x|
    h1[x]
  end

  array = array.join.capitalize
  p array
end

encrypt("Ziggy")

decrypt("Anna")

decrypt(encrypt("swordfish"))