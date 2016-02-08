#Attr Methods

# I worked on this challenge [by myself]

# I spent [#] hours on this challenge.

# Pseudocode

# Input: NameData and Greetings classes
# Output: Above classes
# Steps:

class NameData
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end


class Greetings
  def initialize(name)
    @new_name = NameData.new(name)
  end
  def hello
    puts "Hello #{@new_name.name}! How wonderful to see you today"
  end
end

student = Greetings.new("Ben")
student.hello

# Reflection
=begin
Release 1:
What are these methods doing?

=> The print method simply prints certain instance variables that it's directed to print. 
=> The change methods change the value of a specific variable and the two remaining
=> methods simply return the current value of the name and occupation values, respectively.

How are they modifying or returning the value of instance variables?

=> These are being mabipulated with instance methods. Calling one of the change methods
=> requires an argument to change the instance variable to a new value. The calling
=> methods simply return whatever is the current value of whatever variable they are
=> directed to return.

Release 2:
What changed between the last release and this release?

=> The method that called the age was removed.

What was replaced?

An attribute reader was added to age.

Is this code simpler than the last?

=> Yes, the method that's sole purpose that returns an instance variable is gratuitous.
=> you can access the instance variable directly without having to call a special method for it
=> if you add the reader attribute.

Release 3:
What changed between the last release and this release?

=> The method to change the name was removed.

What was replaced?

=> An attribute writer was given to name.

Is this code simpler than the last?

=> Yes, you can now change the value of the instance variable age directly without
=> creating a special method for it.

Release 6:
What is a reader method?

=> A reader method simply returns a variable when called so that one may see what the
=> value of the variable is at the time of the method call.

What is a writer method?

=> This type of method will change the value of specific varables when called.

What do the attr methods do for you?

=> The attribute methods are substitutes for the methods that can be written in a single line.
=> If you want to give read access to the variables you use reader if you want write
=> then use the writer. If you want both read and write then use the accessor.

Should you always use an accessor to cover your bases? Why or why not?

=> No. It depends on what you want to be able to do outside of the class. If you don't
=> want to be able to read and write then you should use one or the other. You need
=> to understand what you want accessible outside of the class before you assign an attr.

What is confusing to you about these methods?

=> They seem pretty straight-forward. 
=end