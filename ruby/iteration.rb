numbers = [1, 2, 3, 4, 5] # key
corresponders = {1=>'a', 2=>'b', 3=>'c', 4=>'d', 5=>'e'} # value

# .each
numbers.each do |num| #Array: Keys have to be numbers start with 0
 puts num
end

corresponders.each do |num, letter| #Hashes: Key can be anything, value (name = key; income = value); can search for exactly what looking for?
 puts num, letter
end

# .map!
location = ['sf', 'nyc', 'austin', 'chicago', 'la']

location.map! do |location|
 location.upcase
end
puts location

# 1. Delete any items that meet a certain condition (for example, deleting any numbers that are less than 5). Array
height = [180, 171, 160, 90, 200, 195]
height.delete_if {|height| height < 170}
puts height

# 2. Filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5). Hash
animals = {"rabbit" => "herbivore", "t-rex" => "carnivore", "tiger"=>"carnivore", "charles"=>"omnivore", "youna"=>"omnivore", "monkeys"=>"omnivore"}
animals.select! {|animal, diet| diet =="omnivore"}
p animals

# 3. A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!
health_insurance = {"John" => "anthem", "Rose"=>"healthnet", "Ryan"=>"bluecross", "Lucy"=>"UnitedHealthcare", "Luke"=>"anthem"}
health_insurance.keep_if {|name, insurance| insurance == "anthem"}
p health_insurance

# 4. A method that will remove items from a data structure until the condition in the block evaluates to false, then stops.
weight = [ 90, 181, 175, 145, 200, 211]
weight = weight.drop_while{|weight| weight < 200}
p weight