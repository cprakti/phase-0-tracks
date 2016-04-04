def calculate(x, op, y)
  p x.send(op, y)
end

# calculate(2, '+', 4)
# calculate(2, '-', 4)
# calculate(2, '*', 4)
# calculate(2, '/', 4)

puts "What calculation would you like to perform?"
user_calc = gets.chomp

user_calc.split(' ')
first_num = user_calc[0].to_i
second_num = user_calc[4].to_i

calculate(first_num, user_calc[2], second_num)
