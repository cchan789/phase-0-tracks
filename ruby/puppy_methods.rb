

class Puppy 
  
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  def speak(n)
    n.times do 
    puts "Woof!"
    end
  end
  def roll_over
    puts "*rolls over*"
  end
  def dog_years(age)
    years_dog = age.to_f / 8
    puts years_dog
  end
  def eat(food)
    puts "I love eating #{food}!"
    food
  end
  def bark(person)
    puts "Bark! Bark! *barks at #{person}*" 
  end
  def initialize
    puts "Initializing new puppy instance..."
  end
    
 
end

Puppy.new.fetch("ball")
Puppy.new.speak(5)
Puppy.new.roll_over
Puppy.new.dog_years(25)
Puppy.new.eat("Texas Buffalo")
Puppy.new.bark("Steve")

class Football
  
  def initialize
    puts "Initializing football play..."
  end
  
  def kick
    puts "Kicks ball."
  end
  
  def tackle
    puts "Tackles a player."
  end
  
end

football_team = []
index = 0
until index == 50
  football_team.push(Football.new)
  index += 1
end
football_team.each do |member|
  member.kick
  member.tackle
end