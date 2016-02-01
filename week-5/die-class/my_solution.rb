# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: Number of sides for a die
# Output: A die class that can know how many sides it has and can be rolled for a number
# Steps:


# 1. Initial Solution

class Die
  def initialize(sides)
    # code goes here
    if sides.class != Fixnum
      raise ArgumentError.new("Must create Die with a number greater than or equal to 1!")
    elsif sides < 1
      raise ArgumentError.new("Number of Sides must be an integer of at least 1!")
    else
      @sides = sides
    end
  end

  def sides
    # code goes here
    return @sides
  end

  def roll
    # code goes here
    return rand(1...(@sides + 1))
  end
end



# 3. Refactored Solution


# Testing
# die = Die.new("blah!")

# dice = Die.new(-4)




# 4. Reflection
=begin
What is an ArgumentError and why would you use one?

=> Arguement errors are exceptions that are raised when there is a problem with
=> the arguments sent to a method. They are reserved for specifically addressing
=> the issue related to arguements. You would use one to protect yourself from
=> running code with an improper arguement. Perhaps you have methods that use a particular
=> input whose logic is based on a specific input and whose output would be nonsense
=> or the implementation of methods that themselves will return errors if given the wrong input.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

=> This was my first experience with instance variables. It wasn't that substantial
=> of an idea, but it was important to get the class and methods to operate properly.
=> Also, this is the first time I have ever used rand() before. I didn't quite understand
=> that the range goes up to but does not include the upper boundary. I was able to 
=> crudely fix that, but I'm sure there are better ways than the one I implemented.

What is a Ruby class?

=> A class is an object in ruby. They often have their own methods and instance variables
=> They are also not generally used to be manipulated directly. They are often created
=> so that one may create instances of that class. In this case we created an object
=> that is of type class. That means it is an object, and it inherits all of the traits
=> of the object class, while also being an instance of the Die class. This means it
=> also inherits all the traits of the Die class which we defined. 

Why would you use a Ruby class?

=> Creating a class allows us to assign certain traits or features to the class that
=> can be carried by any instance of the class that gets created. It's the same way
=> blocks relate to methods. We create methods so we can store a specific block
=> of code and we can run that block of code over and over with a simple method call.
=> So too with classes. We can create an instance of a class and access all the features
=> of the class instead of having to redfine all those features every time we create a 
=> new object.

What is the difference between a local variable and an instance variable?

=> An instance variable is a variable that is accessible throughout the entire class.
=> You can call it anywhere and, as long as you are in that class, you will be able 
=> to use it. It is marked with the '@' at the begining of the variable. 

=> Local variables are scoped to whatever block, method, file, etc that they are created
=> in. As soon as whatever block of code they were created in is finished running,
=> the variable and its value are gone. 

Where can an instance variable be used?

=> Instance variables are used in classes. These are specific traits of the class
=> that are recognized throughout the class. You can access them within methods of the
=> class without passing them as arguments. You access them directly through the 
=> created instance of the class to get its value. 
=end