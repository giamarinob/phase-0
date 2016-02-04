# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [.5] hours on this challenge.

# Pseudocode

# Input: A list of sides for a die
# Output: A Random roll of the die
# Steps:
# Bring in list and check if it's empty
# Determine the number of sides based on the number of items in the list.
# Give the number of sides of the die.
# Roll the die that gives a random side.

# Initial Solution

class Die
  def initialize(labels)
    raise ArgumentError.new("Input Cannot Be An Empty Array!") if labels.empty?
    @labels = labels
  end

  def sides
    return @labels.length
  end

  def roll
    return @labels[rand(0...@labels.length)]
  end
end

# Relfection
=begin
What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

=> The only real difference was how you accessed information because you are working
=> with an array as compared to an integer. The logic is essentially the same.

What does this exercise teach you about making code that is easily changeable or modifiable? 

=> Having simple code really helps. When it's simple and refactored it's easy to 
=> step in and make a few changes with relative ease.

What new methods did you learn when working on this challenge, if any?

=> Perhaps the .empty? method. As I was reading the summary of the challenge
=> I knew immediately that's what I was going to do before I even got to pcode.

What concepts about classes were you able to solidify in this challenge?

=> I think instance variables. Just using them again and getting used to the structure
=> of classes in general. 
=end