class Santaclass 
  
  @gender = ""
  @ethnicity = ""
  @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  @age = 0

  attr_accessor :gender, :ethnicity, :reindeer_ranking, :age
 
 
  def initialize (gender,ethnicity)
    puts "initializing Santa instance..."
    @gender = gender.to_s
    @ethnicity = ethnicity.to_s
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end
  
  def speak
    puts "Ho, ho,ho! Haaaappy holidays!"
  end
  
  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end  
    
  def celebrate_birthday 
    @age += 1
  end
  
  def get_mad_at(name) 
    name = name.to_s
    @reindeer_ranking.delete(name)
    @reindeer_ranking.push(name)
  end  
  
  #def  gender=(new_gender)
    #@gender = new_gender
  #end     
      
  #def age
    #@age
  #end
  
  #def ethnicity
    #@ethnicity
  #end  
  
end
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"] 
santa_con = []
#p example_genders.sample
#p example_ethnicities.sample

100.times do |x|
santa_con[x] = Santaclass.new(example_genders.sample,example_ethnicities.sample)
santa_con[x].age = rand(141)
puts santa_con[x].age
puts santa_con[x].ethnicity
puts santa_con[x].gender
p santa_con[x].reindeer_ranking
end

#p santa_con[78].age
#p santa_con[78].gender
#han = Santaclass.new("","")
#abby = Santaclass.new("","")
