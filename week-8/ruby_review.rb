# OO Basics: Student


# I worked on this challenge [by myself].
# This challenge took me [#] hours.


# Pseudocode
# finish out the initialize method
# find the average of the list of test scores 
# assign a letter grade based on the average


# Initial Solution

class Student
  attr_accessor :scores, :first_name, :grade

  def initialize(first_name, scores)   #Use named arguments!
    #your code here
    @scores = scores
    @first_name = first_name
    @grade = nil
  end
  
  def average ()
    sum = 0
    @scores.each do |num| 
      sum += num
    end
    ave = sum / @scores.length
    give_grade(ave)
  end
  
  def give_grade (ave)
    if (ave >= 90)
      @grade = 'A'
    elsif (ave >= 80)
      @grade = 'B'
    elsif (ave >= 70)
      @grade = 'C'
    elsif (ave >= 60)
      @grade = 'D'
    else
      @grade = 'F'
    end
  end
end

alex = Student.new("Alex", [100, 100, 100, 0, 100])
ben = Student.new("Ben", [85, 91, 81, 86, 95])
matt = Student.new("Matt", [70, 75, 81, 74, 69])
jen = Student.new("Jen", [100, 76, 82, 93, 65])
jane = Student.new("Jane", [50, 32, 52, 0, 0])
students = [alex, ben, matt, jen, jane]
student_names = students.map { |kid| kid.first_name }

def linear_search(arr, name)
  index = -1
  arr.each do |person|
    if person.first_name == name
      index = arr.index(person)
    end
  end
  return index
end

def binary_search(arr, name, min = 0, max)
  midpoint = (min + max)/2
  if arr.include?(name)
    if arr[midpoint] > name
      return binary_search(arr, name, min, midpoint - 1)
    elsif arr[midpoint] < name
      return binary_search(arr, name, midpoint + 1, max)
    else
      return midpoint
    end
  else
    return -1
  end
end
# Refactored Solution

class Student
  attr_accessor :scores, :first_name, :grade

  def initialize(first_name, scores)   #Use named arguments!
    #your code here
    @scores = scores
    @first_name = first_name
    @grade = nil
  end
  
  def average ()
    sum = 0
    @scores.map { |num| sum += num } 
    give_grade(sum / @scores.length)
  end
  
  def give_grade (ave)
    if (ave >= 90)
      @grade = 'A'
    elsif (ave >= 80)
      @grade = 'B'
    elsif (ave >= 70)
      @grade = 'C'
    elsif (ave >= 60)
      @grade = 'D'
    else
      @grade = 'F'
    end
  end
end

alex = Student.new("Alex", [100, 100, 100, 0, 100])
ben = Student.new("Ben", [85, 91, 81, 86, 95])
matt = Student.new("Matt", [70, 75, 81, 74, 69])
jen = Student.new("Jen", [100, 76, 82, 93, 65])
jane = Student.new("Jane", [50, 32, 52, 0, 0])
students = [alex, ben, matt, jen, jane]


def linear_search(arr, name)
  index = -1
  arr.each do |person|
    if person.first_name == name
      index = arr.index(person)
    end
  end
  return index
end

def binary_search(arr, name, min = 0, max)
  midpoint = (min + max)/2
  if arr.include?(name)
    if arr[midpoint] > name
      return binary_search(arr, name, min, midpoint - 1)
    elsif arr[midpoint] < name
      return binary_search(arr, name, midpoint + 1, max)
    else
      return midpoint
    end
  else
    return -1
  end
end

# Driver Code

puts linear_search(students, "Ben")
puts binary_search(students.map { |kid| kid.first_name }.sort(), "Ben", 0, students.length-1)

# Reflection

# What concepts did you review or learn in this challenge?

# => I further solidified working with classes. I also learned some
# => new search techniques with the binary search method.

# What is still confusing to you about Ruby?

# => There are still some methods I'm trying to get the hang of. Also, since there are
# => so many methods, it can be dificult to choose exactly which one is the proper method
# => to choose. 

# What are you going to study to get more prepared for Phase 1?

# => Ruby docs for sure. Making sure I know the enumerables and methods for hashes and arrays.