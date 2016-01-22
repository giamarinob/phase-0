# Analyze the Errors

# I worked on this challenge [by myself, ].
# I spent [1.5] hours on this challenge.

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
#  while true
#    puts "What's there to hate about #{thing}?"
#end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# =>error.rb
# 2. What is the line number where the error occurs?
# =>The message says line 170 but that's because of the nature of the error.
# 3. What is the type of error message?
# =>This is a snytax error
# 4. What additional information does the interpreter provide about this type of error?
# =>The interpreter was expecting an 'end' where it didn't get one.
# 5. Where is the error in the code?
# =>The error occurs on line 16 or 17 depending on your perspective.
# 6. Why did the interpreter give you this error?
# =>Both the while loop and the method cartman_hates requires their own 'end' and only
# =>one was given. This sets off a chain reaction where every end it actually being applied
# =>to something above it. 

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
# =>The error occurs on line 37
# 2. What is the type of error message?
# =>This is a <main> error.
# 3. What additional information does the interpreter provide about this type of error?
# =>There is an undefined local variable in <main>
# 4. Where is the error in the code?
# =>The object south_park is created without an assignment the proper method definition syntax.
# 5. Why did the interpreter give you this error?
# =>The interpreter does not allow the creation of undefined variables or methods.

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
# =>Line 52
# 2. What is the type of error message?
# =>This is a <main> error.
# 3. What additional information does the interpreter provide about this type of error?
# =>The method "cartman" is undefined.
# 4. Where is the error in the code?
# =>The method cartman is undefined, but called.
# 5. Why did the interpreter give you this error?
# =>A method cannot be called unless it has been defined. 

# --- error -------------------------------------------------------

#def cartmans_phrase
#  puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# =>Line 67
# 2. What is the type of error message?
# =>The error is an arguement error.
# 3. What additional information does the interpreter provide about this type of error?
# =>Cartman's error contains the wrong number of arguements. from line 71
# 4. Where is the error in the code?
# =>The error in the code is on line 71 where the method call includes 1 arguement where it should contain 0.
# 5. Why did the interpreter give you this error?
# =>The method is defined with 0 arguments, so you cannot pass the method more than 0 arguements.

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
#  puts offensive_message
#end

#cartman_says

# 1. What is the line number where the error occurs?
# =>Line 86
# 2. What is the type of error message?
# =>The error is an argument error.
# 3. What additional information does the interpreter provide about this type of error?
# =>The problem originates from line 90. The method is called with 0 arguments and it should have 1.
# 4. Where is the error in the code?
# =>The method called "cartman_says" is called with 0 arguments.
# 5. Why did the interpreter give you this error?
# =>The method must be called with the same number of arguments as it has defined parameters.



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
#  puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# =>Line 107
# 2. What is the type of error message?
# =>This is an argument error
# 3. What additional information does the interpreter provide about this type of error?
# =>The error originates from line 111. There is only one argument given and there should be 2.
# 4. Where is the error in the code?
# =>The method call of cartmans_lie only has one argument and it should have two.
# 5. Why did the interpreter give you this error?
# =>A method must be called with the same amount of arguments as it has defined parameters.

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# =>Line 26
# 2. What is the type of error message?
# =>The error is a type error
# 3. What additional information does the interpreter provide about this type of error?
# =>The string cannot be coerced into fixnum.
# 4. Where is the error in the code?
# =>A string cannot be passed as a parameter to the method '*'
# 5. Why did the interpreter give you this error?
# =>A string cannot be passed as a parameter to the method '*'

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# =>Line 141
# 2. What is the type of error message?
# =>It is a zero division error
# 3. What additional information does the interpreter provide about this type of error?
# =>Divided by zero
# 4. Where is the error in the code?
# =>On line 141 where 20 is divided by zero
# 5. Why did the interpreter give you this error?
# =>Dividing by zero is an arithmetical error that cannot be computed.

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# =>Line 157
# 2. What is the type of error message?
# =>The error is a load error
# 3. What additional information does the interpreter provide about this type of error?
# =>Ruby cannot load the file cartmans_essay.md
# 4. Where is the error in the code?
# =>require_relative is referencing a file that does exist in the location it's told to look.
# 5. Why did the interpreter give you this error?
# =>The file catrmans_essay.md does not exist where ruby is told to look. 


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
=begin
Which error was the most difficult to read?
  I did not find any of the errors difficult to read. The only one that was
  tricky was the while loop with no end. I knew what errot it was going to give
  me, but I did not expect it to give me the line number it did. In fact I was able to see what
  the error was going to be before I ever ran the code. 

How did you figure out what the issue with the error was?
  I knew what the errors were going to be before I ran the code, but I simply followed
  along as the first exercise demonstrates.

Were you able to determine why each error message happened based on the code? 
  Yes I often knew what the problem was going to be before I ran the code , so reading
  the error messages were much easier.
  
When you encounter errors in your future code, what process will you follow to help you debug?
  I will try to follow this exact process. This situation is a little different
  because we have the mindset to debug going into it, so you're looking for errors
  and you know there will be errors. When we write our own programs we will, to some degree,
  be expecting that the code is completely correct. Now obviously that will almost never
  be the case, but the mindset is I think I did this right let's see what happens. Also,
  we know exactly where we are looking. We won't necessarily know where to look in a program.
  That being said, since we know where to look it makes understanding what the error message
  is trying to say easier to intrepet which will only serve to help us when we don't know
  where to look or what to look for and must rely on the error message to find and solve the problem.

=end