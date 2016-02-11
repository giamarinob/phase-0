# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
# Allows us access to the contents of the specified file.
# require_relative 'state_data'

require_relative "state_data.rb"



class VirusPredictor
  
  
  #assigns the input arguments to instance varibles- instantiation
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #calling two other methods inside with parameters you need this infor to determine virus effects 
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  
  #these methods are only available in the methods called within class, scope not outside of class
  def predicted_deaths #(population_density, population, state)
    # predicted deaths is solely based on population density
    #using population density to determine total number of deaths
    
    case @population_density
      
    
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
    
#     def check
#       if @population_density >= 200
        
      
#       elsif @population_density >= 150
      
    end

  end
  
  #using population density to determine how fast the virus spreads
  def speed_of_spread #(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |name, info|
  state = VirusPredictor.new(name, STATE_DATA[name][:population_density], STATE_DATA[name][:population])
state.virus_effects    
end

#we couldn't call virus.effects if it was included in private
# we dont need the user to know what is included inside virus_effects method


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
=begin
What are the differences between the two different hash syntaxes shown in the state_data file?

=> The first syntax is creating a hash using string notation and the second is a hash using symbol notation

What does require_relative do? How is it different from require?

=> require_relative allows you to use a relative path whereas require needs a direct path to the file you want to load.

What are some ways to iterate through a hash?

=> The .each is the one we used. There are other methods that will do it as well as enumerables.

When refactoring virus_effects, what stood out to you about the variables, if anything?

=> You didn't need to be passing them back and forth. Once you created instance variables there was
=> no need for the parameters and argumetns.

What concept did you most solidify in this challenge?

Refactoring, iterating over a hash.
=end