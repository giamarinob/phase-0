# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [.5] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


# Initial Solution

class GuessingGame
  def initialize(answer)
    # Your initialization code goes here
    @answer = answer
    @correct = false
  end

  # Make sure you define the other required methods, too
  def guess(guess)
    if guess > @answer
      @correct = false
      return :high
    elsif guess < @answer
      @correct = false
      return :low
    else
      @correct = true
      return :correct
    end
  end
  
  def solved?
    return @correct
  end
  
end




# Reflection
=begin
How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

=> Instance variables and methods act the same becuase they are the same. "Real world"
=> objects act in the same way as created ones do. They inherit certain things like the
=> classes we create. They have their own instance variables and methods that can be called
=> on anything that is of that class just like the ones we create. 

When should you use instance variables? What do they do for you?

=> Instance variables should be used when they will be used throughout the class.
=> what they allow you to do is access them in instance methods without explicitly
=> passing them to the method. 

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

=> I did not have any problem implementing flow control. Flow control is used to
=> direct a program to act different ways depending on different inputs and outputs.

Why do you think this code requires you to return symbols? What are the benefits of using symbols?

=> Symbols are more effiecient than than strings. I think because we haven't used
=> symbols all that much up until this point. 
=end