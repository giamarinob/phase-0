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