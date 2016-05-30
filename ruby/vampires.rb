puts "how many employees need to be processed?"
num_emp = gets.chomp
num_emp = num_emp.to_i

num_emp.times {
puts "What is your name?"
name = gets.chomp
puts "How old are you?"
age = gets.chomp
age = age.to_i
puts "What year were you born?"
birth_year = gets.chomp
cal_age = Time.now.year - birth_year.to_i
puts "Do you like garlic bread?(Y/N)"
likes_garlic = gets.chomp
puts  "Would you like to enroll in health insurance?(Y/N)"
health_insurance = gets.chomp

puts "please input any allergies you have, and type done when all of your allergies are listed"
allergies = ""
until allergies == "done"
  allergies = gets.chomp
    if allergies == "sunshine"
      result = "Probably a vampire"
      break
    end
end

if name == "Drake Cula" || name == "Tu Fang"
  result = "Definitely a vampire"
elsif (age != cal_age && likes_garlic == "N") && health_insurance == "N"
  result ="Almost certainly a vampire"
elsif age != cal_age && (likes_garlic == "N" || health_insurance == "N") 
  result ="Probably a vampire"
elsif age == cal_age && (likes_garlic == "Y" || health_insurance == "Y")
  if result == "Probably a vampire"
    
  else
    result = "Probably not a vampire"
  end
else  
  if result == "Probably a vampire"
    
  else
    result = "Results inconclusive"
  end
end


puts result
}

puts  "Actually, never mind! What do these questions have to do with anything? Let's all be friends." 