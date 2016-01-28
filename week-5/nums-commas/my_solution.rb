# Numbers to Commas Solo Challenge

# I spent [2] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? 
# => We are tested with integers but solution will take into account floats
# What is the output? (i.e. What should the code return?)
# => The number with commas seperating hundreds, thousands, etc.
# What are the steps needed to solve the problem?
=begin
  First we check to see if the number is at least 1000.
    If it isn't then we can just return the number with no commas.
  If the number is larger than 1000 then we will handle the number.
    First we want to check how many times 1000 goes into the number. This will
    be how many commas we need.
    
    Then we will perform an operation as many times as 1000 goes into the number.
      Take the remainder of the number divided by 1000 and put it into an array
      followed by a comma.
      
      Take the number and divide it by 1000
      
    Add the remaining part of the number onto the end of the array.
    
    Reverse the array.
    
  Return the array.
=end

# 1. Initial Solution
=begin
def separate_comma(number)
  puts number
  if (number/1000 < 1)
    # testing output
    puts number
    return number.to_s
  else
    times_divisible = 0
    num = number.to_i
    while num/1000 >= 1 do
      times_divisible += 1
      num = num/1000
    end
    
    comma_number = []
    times_divisible.times do
      remain = number % 1000
      if remain == 0
        comma_number << "000"
      elsif remain < 100 && remain > 10
        comma_number << "0" + remain.to_s
      elsif remain < 10
        comma_number << "00" + remain.to_s
      else
        comma_number << remain
      end
      comma_number << ","
      number = number.to_i / 1000
    end
     
    comma_number << number
    comma_number.reverse!
    
    comma = ""
    comma_number.each do |item|
      comma += item.to_s
    end
    # testing output
    puts comma
    return comma
  end
end
=end

=begin
# Testing output
separate_comma(100)
separate_comma(0)
separate_comma(100000)
separate_comma(1354654)
separate_comma(7500)
separate_comma(6603790)
separate_comma(660379)
separate_comma(35793)
separate_comma(733961)
separate_comma(819014)
separate_comma(3009264)
=end

# 2. Refactored Solution
def separate_comma(number)
  # Test output against input
  # puts number 
  if (number/1000 < 1)
    return number.to_s
  else
    times_divisible = divisible(number.to_i)
  
    comma_number = add_commas(times_divisible, number)
    comma_number.reverse!
    
    comma = make_string(comma_number)
    return comma
  end
end



def divisible (num)
  count = 0
  while num/1000 >= 1 do
    count += 1
    num = num/1000
  end
  return count
end  





def add_commas(commas, number)
  comma_number = []
  commas.times do
    remain = number % 1000
    case 
    when remain == 0 then comma_number << "000"
    when remain < 100 && remain > 10 then comma_number << "0" + remain.to_s
    when remain < 10 then comma_number << "00" + remain.to_s
    else comma_number << remain
    end

    comma_number << ","
    number = number.to_i / 1000
  end
  comma_number << number
  return comma_number
end




def make_string(comma_number)
  comma = ""
  comma_number.each do |item|
    comma += item.to_s
  end
  return comma
end
  
=begin
***Reflection***
What was your process for breaking the problem down? What different approaches did you consider?

=> The first thing I did was psuedo code the problem by writing down on paper sort
=> of what I wanted the method to do. The first approach I used was to break apart the
=> number into an array with the split enumerable and then go through the array and add
=> a comma every 3 indices. I also tried to go straight from a number to a string,
=> but I ran into problems reversing the string, so I ended up settling on using an
=> array as a placeholder and reverse the array then put that into a string.

Was your pseudocode effective in helping you build a successful initial solution?

=> Yes I first did the psuedocode to get a general structure to the method and I built
=> up from there.

What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?

=> I didn't really use any new ruby methods. If I had tried to create a solution by putting
=> the number in the an array by splitting then I probably would have needed to heavily rely
=> on the ruby docs. As it was I was somewhat familiar with most of the methods I used.
=> I did, on occasion, reference the ruby docs to double check syntax in some cases. For example,
=> I was getting errors and I was able to find the error was where I was adding to my array. I referenced
=> the ruby docs to double check the syntax of adding to an array and how that looks refactored.

How did you initially iterate through the data structure?

=>The first iteration I did was to determine how many commas I as going to need. Then
=> I took that number and iterated through the number to add chunks of the number to
=> an array followed by a comma. 

Do you feel your refactored solution is more readable than your initial solution? Why?

=> Yes, because I went through and created methods to handle various chunks of code
=> and return those answers. My refactored method only takes up 11 lines while the original
=> solution, which was all dont in a single method, was about 40 lines or so.
=end