def calculate(x, op, y)
  p answer = x.send(op, y)
end

# calculate(2, '+', 4)
# calculate(2, '-', 4)
# calculate(2, '*', 4)
# calculate(2, '/', 4)

calc_hash = {}
user_calc = ''
until user_calc == "done"
  puts "What calculation would you like to perform?"
  user_calc = gets.chomp.downcase
  unless user_calc == "done"
    user_calc.split(' ')
    first_num = user_calc[0].to_i
    second_num = user_calc[4].to_i
    answer = calculate(first_num, user_calc[2], second_num)
    calc_hash[user_calc] = answer
  end
end

puts "You performed #{calc_hash.length} calculations."
calc_hash.each {|user_calc, answer| puts "#{user_calc} = #{answer}" }
