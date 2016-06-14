#Pseudocode for 5.3 hash.rb_decor_theme
#I'll obtain details of client's parameters : name, age, number_of_children,favo_decor_theme,favo_color,income ,resident_size,are_you_our_current_client?
#I'll convert all response to the appropriate data type, in the hash.
# I'll print hash on screen when all responses are completed.
#I'll let user to update a key, if so desired,when prior mistake was made.


puts "What is your name?"
 name = gets.chomp
puts "What is your age?"
 age = gets.chomp.to_i
puts "How many children do you have?"
 numb_children = gets.chomp.to_i
puts "What is your favorite docor_theme?"
  favo_decor_theme = gets.chomp
puts "What is your favorite color?"
  favo_color = gets.chomp
puts "What is your income in USD?"
 income = gets.chomp.to_i
puts "What is your residence size in estimated number of sq.ft?"
 residence_size_sq_ft = gets.chomp.to_i
puts "Are you our current client? true/false"
 answer = gets.chomp
 answer = answer == "true"
  
 hash = { :name => name,
          :age => age,
          :numb_children => numb_children, 
          :favo_decor_theme => favo_decor_theme,  
          :favo_color =>favo_color,
          :income => income,
          :residence_size =>residence_size_sq_ft,
          :response => answer
 }
 
 hash.each do  |key, value| 
   puts "#{key} #{value}"
end   
   puts "Would you like to change any of your response?"
    puts "If yes,please input the one item you would like to change? Otherwise, enter none"
    
    
choice = gets.chomp
  if choice == "none"
  puts "all done then!"
  
  else

  puts "Please input the correct value"
  correction = gets.chomp
    if choice == "age" || choice == "numb_children" || choice == "income" || choice == "residence_size"
      correction.to_i
    elsif choice == "response"
      correction = correction == "true"
    else
    end
  choice = choice.to_sym
  hash[choice] = correction
    
  end
  
hash.each do |key,value|
  puts "#{key}  #{value}"
end
           
