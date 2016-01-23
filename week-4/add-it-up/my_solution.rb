# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: Jillian].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: Array of numbers
# Output: Summation of the array
# Steps to solve the problem.
=begin
Create a container to hold the running total. 
Go through each element of the array and add that element to the running total.
Send back the container that has the running total. 
=end

=begin
def total (numbers)
  add = 0
  numbers.each do |num|
    add += num 
  end
  return add
end
=end


# 3. total refactored solution
def total (numbers)
  return numbers.inject{|add, num| add = add + num}
end


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input:Array of sentences
# Output: A sentence of the elements of the array
# Steps to solve the problem.


# 5. sentence_maker initial solution
=begin
def sentence_maker (words)
  sentence = ""
  words.each do |word|
    sentence += (word.to_s + " ")
  end
  sentence.strip!
  sentence += "."
  return sentence.capitalize
end
=end


# 6. sentence_maker refactored solution
def sentence_maker (words)
  return words.join(" ").strip.capitalize + "."
end
