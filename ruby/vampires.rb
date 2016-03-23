puts "How many interviews will you have today?"
plan_ints = gets.chomp.to_i
completed_ints = 0
puts "Number of interviews planned for today: #{plan_ints}."
    until completed_ints == plan_ints
        puts "Number of interviews completed so far: #{completed_ints}."
        puts "Do you have any allergies?"
        allergies = gets.chomp.downcase
        case allergies
            when "yes" then puts "Name your first allergy."
            current_a = gets.chomp.downcase
                until current_a == "sunshine" || current_a == "done"
                    puts "What is your next allergy?"
                    current_a = gets.chomp.downcase
                end
                if current_a == "sunshine"
                    puts "Probably a vampire."
                else
                    puts "OK, thanks for letting us know."
                    puts "What is your first and last name?"
                    full = gets.chomp.downcase
                    puts "How old will you be on Dec 31st, 2016?"
                    age = gets.chomp.to_i
                    puts "In what year were you born?"
                    year = gets.chomp.to_i
                    num = 2016 - year
                    puts "Our cafeteria makes some fantastic garlic bread.  Would you like me to order you some?"
                        gar_answer = gets.chomp.downcase
                        if gar_answer == "yes"
                            garlic = true
                        elsif gar_answer == "no"
                            garlic = false
                        else
                        end
                    puts "Would you like to enroll in the company health insurance plan?"
                         ins_answer = gets.chomp.downcase
                        if ins_answer == "yes"
                        insurance = true
                        else
                        insurance = false
                         end
                    if age == num && (garlic == true || insurance == true) && !(full == "tu fang" || full == "drake cula")
                        puts "Probably not a vampire."
                    elsif age != num && !(garlic == true && insurance == true) && !(garlic == false && insurance == false) && !(full == "tu fang" || full == "drake cula")
                        puts "Probably a vampire."
                    elsif (age != num && garlic != true && insurance != true) && !(full == "tu fang" || full == "drake cula")
                        puts "Almost certainly a vampire."
                    elsif  (full == "tu fang" || full == "drake cula")
                        puts "Definitely a vampire."
                    else
                        puts "Not sure"
                    end
                end
            when "no" then puts "OK, just checking."
                    puts "What is your first and last name?"
                    full = gets.chomp.downcase
                    puts "How old will you be on Dec 31st, 2016?"
                    age = gets.chomp.to_i
                    puts "In what year were you born?"
                    year = gets.chomp.to_i
                    num = 2016 - year
                    puts "Our cafeteria makes some fantastic garlic bread.  Would you like me to order you some?"
                        gar_answer = gets.chomp.downcase
                        if gar_answer == "yes"
                            garlic = true
                        elsif gar_answer == "no"
                            garlic = false
                        else
                        end
                    puts "Would you like to enroll in the company health insurance plan?"
                         ins_answer = gets.chomp.downcase
                        if ins_answer == "yes"
                        insurance = true
                        else
                        insurance = false
                         end
                    if age == num && (garlic == true || insurance == true) && !(full == "tu fang" || full == "drake cula")
                        puts "Probably not a vampire."
                    elsif age != num && !(garlic == true && insurance == true) && !(garlic == false && insurance == false) && !(full == "tu fang" || full == "drake cula")
                        puts "Probably a vampire."
                    elsif (age != num && garlic != true && insurance != true) && !(full == "tu fang" || full == "drake cula")
                        puts "Almost certainly a vampire."
                    elsif  (full == "tu fang" || full == "drake cula")
                        puts "Definitely a vampire."
                    else
                        puts "Not sure"
                    end
        end
        completed_ints += 1
        puts
    end

  puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."