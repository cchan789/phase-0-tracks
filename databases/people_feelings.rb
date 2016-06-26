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
    are_you_sure BOOLEAN
  )
SQL

# create a people_feelings table (if it's not there already)
db.execute(create_table_cmd)

# add a test people_feelings

def create_pfeel(db, name, age, feeling, intensity, are_you_sure)
  puts "Please input the feeling of the person"
  feelings = gets.chomp
  puts "please input the intensity of that feeling for the person"
  intensity = gets.chomp
  db.execute("INSERT INTO people_feelings (name, age, feelings, intensity, are_you_sure) VALUES (?, ?, ?, ?, ?)", [name, age, feelings, intensity, are_you_sure])
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
  puts "#{personfeeling['name']} is #{personfeeling['age']}  #{personfeeling['feelings']}  #{personfeeling['intensity']}"
end
 
db.execute("drop table people_feelings")