# Virus Predictor

# I worked on this challenge with: Charles Chan.
# We spent 2 hours on this challenge.

# EXPLANATION OF require_relative
#
# Require relative loads the file that is within the string. It searches the file structure to find the file that you are requiring but it is using the relative path as opposed to the absolute path.

class VirusPredictor

  def initialize(state, population_density, population)
    @state = state
    @population = population
    @population_density = population_density
  end

  def virus_effects
    predicted_deaths #(@population_density, @population, @state)
    speed_of_spread #(@population_density, @state)
  end

  private

  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      death_rate = 0.4
    elsif @population_density >= 150
      death_rate = 0.3
    elsif @population_density >= 100
      death_rate = 0.2
    elsif @population_density >= 50
      death_rate = 0.1
    else
      death_rate = 0.05
    end

    number_of_deaths = (death_rate * @population).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end



#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |k, v|
  state_name = VirusPredictor.new(k, v[:population_density],v[:population])
  state_name.virus_effects
end


#=======================================================================
# Reflection Section

#There are differences between the two hash syntaxes shown in the state_data file 
#the first is that the outer hash is stored in a Constant, and the inner hashes are stored as keys for a hash
#in the outer hash, the keys are strings, and use the rocket notation, and in the inners hashes, the kyes are symbols and use colon notation
#the outer hash stores hashes as values, the inner hashes store numbers as values

#Require_relative is a more local version of require
#require serves to ask the kernel to load a certain file, and these are usually source code or libraries
#require_relative tries to load a certain file, but only looks from the location of the file containing the require_relative call

#there are several methods to loop through hashes.
#these include .each, .map, .map!, and the traditional for and while loops can be modified to go through hashes
#.each_key and .each_value are also inbuilt methods to loop through hashes

#the variables in each method call within virus_effects are instance variables, and as such are available to other methods within the instance inherently
#so refactoring involves removing the paramater requirements for the 2 methods called in the virus_effects method
#as mentioned, all the variables are instance scope
#I noticed the variables @population_density and @state were repeated in both method calls, and all the variables were named well

#I most solidified coding involving looping with nested hashes 