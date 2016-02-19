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

def linear_search(name)
  index = -1
  students.each do |person|
    if person.first_name == name
      index = students.index(person)
    end
  end
  return index
end

def binary_search(name)
  
end
# Refactored Solution


# Driver Code
