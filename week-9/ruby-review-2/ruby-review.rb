# I worked on this challenge [by myself].
# This challenge took me [#] hours.


# Pseudocode
# Input: An array of numbers
# Output: Fizzbuzzed array
# Steps:
# Take in a list of numbers.
# Go through the list of numbers
# => Check to see if the number is divisible by 3
# =>=> If it is check to see if its divisible by 5
# =>=>=> If it is replace the number with fizzbuzz
# =>=>=> If it isn't replace the number with fizz
# =>=> If it isn't replace the number with buzz


# Initial Solution

def super_fizzbuzz(array)
  array.each_index do |index|
    if array[index] % 3 == 0
      if array[index] % 5 == 0
        array[index] = "FizzBuzz"
      else
        array[index] = "Fizz"
      end
    elsif array[index] % 5 == 0
      array[index] = "Buzz"
    end
  end
  return array
end



# Refactored Solution

def super_fizzbuzz(array)
  array.each_index do |index|
    array[index] = "FizzBuzz" if array[index] % 15 == 0
    array[index] = "Fizz" if array[index] % 3 == 0
    array[index] = "Buzz" if array[index] % 5 == 0
  end
  return array
end





# Reflection

# What concepts did you review in this challenge?

# => Iterating over arrays and nested if statements.

# What is still confusing to you about Ruby?

# => I had to make sure I checked the FizzBuzz item first in my refactored
# => if statement otherwise it would never get checked. I thought perhaps the
# => refactored if would evaluate every if condition, but apparently it still 
# => breaks when it get to one that is true. It makes sense now.

# What are you going to study to get more prepared for Phase 1?

# => Probably SQL because we only touched on it breifly and more JS.