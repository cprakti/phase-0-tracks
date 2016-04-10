# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # Make empty hash
  # Split string using split method with white space as a delimiter
# FOR each new string
  # Pull first (new) string into hash
  # set default quantity
  # repeat for each (new) string
# end loop when out of strings
  # print the list to the console (using print method below)
# output: hash


def create_list(list)
  groceries = {}
  list_arr = list.split(' ')

  list_arr.each do |item|
    groceries[item] = 1
  end


  # print_list(groceries)
  return groceries


end

# Method to add an item to a list
# input: item name and optional quantity, hash to add item to
# steps:
  #  assign key of hash to input (item name)
  # IF quantity
    # assign value to quantity
  # ELSE set quantity to 1
# output: return updated hash

# this is inelegant, use splat??
def add_item(item, hash)
  if hash.include?(item)
    return hash
  else
  hash[item] = 1
  return hash
end


def add_item(item, quantity, hash)
  if hash.include?(item)
    update_quantity(item, quantity, hash)
    return hash
  else
    hash[item] = quantity
    return hash
  end

end

=begin
NOTE *
user interface should be logic in the driver code, don't put it into the methods itself. separation of concerns.
=end

# Method to remove an item from the list
# input: item name and hash
# steps:
  # remove input from hash (and associated value)
# output: return updated hash

def remove_item(item, hash)
  hash.delete(item)
  return hash
end

# Method to update the quantity of an item
# input: item name, hash, and quantity
# steps:
  # access value pair @ name => old-quantity
  # set value @ name to new-quantity
# output: return updated hash

def update_quantity(item, quantity, hash)
  hash[item] = quantity
  return hash
end

# Method to print a list and make it look pretty
# input: hash
# steps:
  # loop the hash
  # print key value pair for each key, format with puts and stuff
  #  end loop
# output: list of hash contents (long string?){no real return value}

def print_list(hash)
  puts "Here is this week's grocery list:"
  hash.each do |item, quantity|
    puts "#{item}: #{quantity}"
  end
end

# That invites a good question about your design, what happens if the input string is ""?
bill = create_list("carrots apples cereal pizza")

print_list(bill)
add_item('Lemonade', 2, bill)
add_item('Tomatoes', 3, bill)
add_item('Onions', 1, bill)
add_item('Ice Cream', 4, bill)

print_list(bill)

remove_item('Lemonade', bill)

print_list(bill)

update_quantity('Ice Cream', 1, bill)

print_list(bill)



# What did you learn about pseudocode from working on this challenge?

  # I learned that pseudocode is written for other developers to read and understand what you have done.  Instead of writing a vague outline of what will be needed, you should break down your plan of attack specifically but without including any actual code.

# What are the tradeoffs of using arrays and hashes for this challenge?

  # We decided to you use a hash for this challenge in order to store information about the quantity of each item (key).

# What does a method return?

  # A method returns the information from the last line that was run unless you have declared something else to be run.

# What kind of things can you pass into methods as arguments?

  # Methods accept a variety of inputs; anything from strings, numbers, floats, hashes, or arrays can be used as arguments.

# How can you pass information between methods?

  # Using the output from one method as the input of another method, you can pass information from method to method.  Also, you can call a method inside another method.

# What concepts were solidified in this challenge, and what concepts are still confusing?

  # This was a good exercise in pseudocode.  Generally, my solutions are devised by experimenting, but I see the value in creating a plan.  I would like to have more practice with pseudocode and more practice with passing information between methods.