#Ask a user for their first and last name and then greet the user
puts "Hello. What is your first name?"
first_name = gets.chomp
puts "Thank you. Now what is your last name?"
last_name = gets.chomp
puts "Hello " + first_name + " " + last_name + ". It\'s nice to meet you!"

#Ask a user for their favorite number. Then add 1 and display it back with a message.
puts "Hello " + first_name + " " + last_name + ". What is your favorite number?"
num = gets.chomp
num = num.to_i
num += 1
puts "Your number is pretty cool, but #{num} is bigger and better than yours!"

=begin
4.3.1 Return a Formatted Address

https://github.com/giamarinob/phase-0/tree/master/week-4/address
================================================================
4.3.2 Defining Math Methods

https://github.com/giamarinob/phase-0/tree/master/week-4/math

================================================================

How do you define a local variable?
  A local variable is defined with an assignment statement. my_variable = "whatever"
  A local variable can have the scope of a particular method or function or it
  can have the scope of an entire document. 
  
How do you define a method?
  A method must include, at the very least the key word "def" followed by the 
  method name. It must also be closed with the "end" keyword. It could contain code
  inside, but it isn't required to get the method to compile. The same goes for
  parameters. It can have them, but it doesn't need them.
  
What is the difference between a local variable and a method?
  A local variable is a single object. They dont't really do anything when called
  upon other than hold some value. A method, when called on, performs some function
  when called. A method can perform its function on a local variable. THe local variable
  can be contained within a method. 
  
How do you run a ruby program from the command line?
  In c9 I simply type ruby filename.rb
  
How do you run an RSpec file from the command line?
  In c9 I simply type rspec filename.rb
  
What was confusing about this material? What made sense?
  I did not find anything confusing about this challenge. The only thing I had problems
  with were little things like having the method return a string instead of putting it out
  to the screen, or forgetting to put def in front of my method name when creating it
  which made the rspec error interesting to say the least. 
=end

