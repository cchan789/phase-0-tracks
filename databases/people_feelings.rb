# OPERATION people_feelings

# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("people_feelings.db")
db.results_as_hash = true

# learn about fancy string delimiters
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS people_feelings(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT,
    feelings VARCHAR(255),
    intensity VARCHAR(255),
    you_need_help BOOLEAN
  )
SQL

$feelings = ["happy", "sad", "frustrated","excited", "mad","disappointed", "overwhelmed", "energetic", "nostalgic","empowered","crazy","melancholy","neutral", "thoughtful"]
$intensities = ["mild", "medium", "extreme"]
# create a people_feelings table (if it's not there already)
db.execute(create_table_cmd)

# add a test people_feelings

def create_pfeel(db, name, age, feeling, intensity, you_need_help)
  puts "please input your age"
  age = gets.chomp.to_i
  puts "Please input your feeling :1 if happy, 2 if sad, 3 if frustrated, 4 if excited, 5 if mad, 6 if disappointed, 7 if overwhelmed, 8 if energetic, 9 if nostalgic, 10 if empowered, 11 if crazy, 12 if melancholy, 13 if neutral, 14 if thoughtful"
  emotion = gets.chomp.to_i
  emotion = emotion - 1
  feel = $feelings[emotion]
  puts "please input the intensity of that feeling for the person :1 if mild, 2 if medium, 3 if extreme"
  intensity = gets.chomp.to_i
  intensity = intensity - 1
  intense = $intensities[intensity]
  puts "do you need help? If so, please input yes, and if not, please input no"
  needshelp = gets.chomp
  assi = (needshelp == "yes")
  if assi
    assist = 'true'
  else
    assist = 'false'
  end
  db.execute("INSERT INTO people_feelings (name, age, feelings, intensity, you_need_help) VALUES (?, ?, ?, ?, ?)", [name, age, feel, intense, assist])
end

finished = false
while !finished do
  create_pfeel(db, Faker::Name.name, 0, 'happy', 'mild', 'true')
  puts "If you're done, please enter 'done'. Otherwise just hit enter with no input"
  input = gets.chomp
  if input == 'done'
    finished = true
  end
end

pfeelings = db.execute("SELECT * FROM people_feelings")
 pfeelings.each do |personfeeling|
   if personfeeling['you_need_help'] == 'true'
     nhelp = "needs help"
   else
     nhelp = "doesn't need help"
   end
  puts "#{personfeeling['name']} is #{personfeeling['age']} years of age and is feeling #{personfeeling['intensity']} #{personfeeling['feelings']} and #{nhelp}"
end

#db.execute("drop table people_feelings")