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


applicant = {
  name: "John Johnson",
  address: "12, Broadway, NY NY",
  email: "jjohnson@gmail.com",
  phone: "2123456874"
  fave_color: yellow,
  likes_pizza: true
  likes_fishing: false
  likes_hunting: false,
  ommbre: "irrelevant"
  
  key-value pairs
  key-value pairs
  
  
  Create Hash: 3 ways:
    
    interior_designer_job = { }
    
    interior_designer_job = {:salary => 100000, "must be certified" => true}
    
    interior_designer_job = {salary: 100000, "must be certified" => true}
    
}applicant[:name => "John", :likes_paisley =>true, :fave_blue => "indigo"]

if applicant [:likes_paisley]
  puts "This applicant likes paisley."
  
else
  puts "This applicant does not like paisley."
end
R2
delete key-value pair?
access value of key not in the hash?
set default value otherwise?
How access keys of hash? What data type method return?
How remove everything from hash at once? =return empty hash.
Can access just values of hash?

R3 :docor_theme
#pseudocord, write program details of client:
  name , age, number of childre,deco theme.
  use symbols; >string, integer, boolean data.

5.4:
methods  
  iterations, array = a  intergers  or  letters.
              hash  = h
     delete # less than 5 keep letters
  filter other Ruby options
  remove items from data structure till conditions block evaluate false.