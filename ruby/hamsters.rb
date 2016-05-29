def hamsterprop()
  puts "What is the hamster's name?"
  name = gets.chomp
  puts "What is the hamster's volume level?"
  vol = gets.chomp
  vol = vol.to_f
  puts "What is the hamster's color?"
  color = gets.chomp
  puts "Is the hamster a good candidate for adoption?"
  adoptable = gets.chomp
  puts "What is the hamster's age (approximately)?"
  age = gets.chomp
    if age.length == 0
      age = nil
    else
    age = age.to_f
    end
  puts "name is: " + name
  puts "volume is: #{vol}"
  puts "color is: " + color
  puts adoptable + ", this hamster is a good candidate for adoption"
  puts "this hamster is estimated #{age} years old"
end

hamsterprop()