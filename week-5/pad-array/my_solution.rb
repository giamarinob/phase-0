# Pad an Array

# I worked on this challenge [by myself, with: Luis Ybarra]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution
# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  if array.length >= min_size
    return array
  else
    diff = min_size - array.length
    diff.times do
      array << value
    end
    return array
  end
end

def pad(array, min_size, value = nil) #non-destructive
  # Your code here
  count = 0
  array_copy = []
  array.each do |i|
    array_copy[count] = i
    count += 1
  end
  
  if array_copy.length >= min_size
    array_copy
  else
    
    while (array_copy.length < min_size) do
      
      array_copy << value
      
    end
    return array_copy
  end
end


# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
  if array.length >= min_size
    return array
  else
    diff = min_size - array.length

    array.fill(value, array.length, min_size - array.length)
    return array
  end
end




def pad(array, min_size, value = nil) #non-destructive
  # Your code here
  
  array_copy = Array.new(array)
  
  if array_copy.length >= min_size
    array_copy
  else  
    array_copy.fill(value, array_copy.length, min_size - array_copy.length)
    return array_copy
  end
end




# 4. Reflection
=begin
Were you successful in breaking the problem down into small steps?

=> Yes we pcoded the problem into small steps to make it more manageable.

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

=> Not too much difficulty. Once it was in pcode we simply followed the pcode to
=> come up with a coded solution.

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

=> Yes our initial solutions worked successfully for the most part. The only
=> problem we had was making sure the pad() method worked nondestructively. It was
=> simply a change of variable name that did the trick.

When you refactored, did you find any existing methods in Ruby to clean up your code?

=> Yes we used the fill method in the array class. It simplified the code down
=> to a cleaner state. 

How readable is your solution? Did you and your pair choose descriptive variable names?

=> Yes i think we picked approriate names for the variables. I think even the most casual
=> of observer that understands Ruby will be able to easily discern what our intent is. 

What is the difference between destructive and non-destructive methods in your own words?

=> Destructive changes the object itself while nondestructive does some operation
=> but does not alter the original copy. 

=end