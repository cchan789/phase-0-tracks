# pseudocode Hospital
# class Hospital
# attributes
# name, string
# size, num_beds, int
# departments,list

# methods
# surgical_operations(success)
# dispense_drugs(cure a disease)
# deliver_babies(boy,girl)
#ambulance_service(siren)


class Hospital
    
    @name
    @num_beds
    @departments 
    @burn_service
    
    attr_accessor :name, :num_beds, :burn_service
    attr_reader :departments
    

    def initialize  (name, num_beds, burn_service) 
      @name = name
      @num_beds = num_beds
      @burn_service = burn_service
      @departments = {}
      done = false
      until done do 
        puts "enter a department name"
        dname = gets.chomp
        puts "enter the department number of beds"
        dnum = gets.chomp
        dname = dname.to_sym
        dnum = dnum.to_i
        @departments[dname] = dnum
        puts "if you are done ,please enter 'done', otherwise just push enter"
        input = gets.chomp
        done = input == "done"
      end
    
    end
    
    def name=(value)
    if value == ""
            raise "Name can't be blank!"
        end
        @name = value
    end
    
    def num_beds=(value)
        if num_beds < 0
            raise "Size of #(value) isn't valid!"
        end
        @size = value
    end
        
    def  surgical_operations
        puts "Please input the success rate for the procedure (number out of 100)"
            success_rate = gets.chomp.to_i
            rando = rand(99) + 1
        if rando <= success_rate
            puts "The surgery was a success"
        else
            puts "It was a failure"
        end
    end
    
    def deliver_babies
        puts "What baby is delivered? What 'boy/girl', what 'weight?"
           gender = gets.chomp
           weight = gets.chomp.to_i
        puts "Congratulations! Is a #{gender} ,#{weight}lb "
    end
    
    def dispense_drugs
        puts "What disease do you have? choices(cancer, infection, pain)"
        input = get.chomp
        disease = input
        puts "The drug cure my #{disease}!!!"
    end
    
    
    def ambulance_service(time)
       
        puts " When will the ambulance arrive?" 
        puts " It will arrive in #{time} minutes."
        puts "I am dying. Is the ambulance coming???"
        puts " Siren 'TOOH...DOOH...TOOH...DOOH..... "
           
    end 
end


     
 

finished = false

hospitallist = []
x = 0

until finished
puts"what's the hospital name?"
tname = gets.chomp
puts"what's the number of beds?"
tbed = gets.chomp.to_i
puts"does it have a burn department? (yes/no)"
tburn = gets.chomp
tburn = tburn == "yes"
hospitallist[x] = Hospital.new(tname,tbed,tburn)
puts "do you want to enter a new hospital? if so input yes"
ans = gets.chomp
if ans == "yes"
else
    finished = true
end
x += 1
end

hospitallist.each do |y|
    puts y.name
    puts y.num_beds
    puts y.burn_service
    y.departments.each do |dep,num|
        puts "department name is #{dep}"
        puts num
    end
    puts ""
end

#3.times do
    #hospitallist[0].surgical_operations
#end

 
 