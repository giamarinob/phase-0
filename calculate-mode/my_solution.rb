# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? A list of items. 
# What is the output? A list of the most frequesnt items
# What are the steps needed to solve the problem?
# Set the list that we will run the method
# Create the method
# Go through list and assign each item to a list with the number of times that item appears
# Check the new list for which item(s) appear the most
# Put the item(s) in their own list.
# Send back the list.


# 1. Initial Solution
def mode(list)
  mode_list = Hash.new
  list.each do |x|
    if mode_list.has_key?(x)
      mode_list[x] += 1
    else
      mode_list[x] = 1
    end
  end
  
  mode_num = 0
  mode_list.each {|k, v| mode_num = v if mode_num < v}
  mode_array = []
  mode_list.each{|k, v| mode_array << k if mode_num == v}
  return mode_array
end



# 3. Refactored Solution

# Quick Tests
# arr = [1, 2, 3, 3, 2]
# mode_arr = mode(arr)
# mode_arr.each {|x| puts x}


# 4. Reflection
=begin
Which data structure did you and your pair decide to implement and why?

=> We used loop structures to iterate through the arrays and hashes to assign values
=> or find values of interest.

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 

=> I wouldn't say we were more successful or less successful compared to another situation.
=> We were able to describe the problem in pcode and transfer those ideas to a coded
=> solution.

What issues/successes did you run into when translating your pseudocode to code?

=> We did not have any issues translating the pcode into a working solution.

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

=> We used the .each method to iterate through the arrays and hashes. 