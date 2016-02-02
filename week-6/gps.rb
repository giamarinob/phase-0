# Your Names
# 1)Rene Castillo
# 2)Ben Giamarino

# We spent [2] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  keys = library.values.reverse
  
  #### "pie" 20 ==> 2 pies, 1 cake, 1 cookie or 2 pies , 6 cookies
  #alerts user if we dont know how to cook item
  raise ArgumentError.new("#{item_to_make} is not a valid input") if !library.has_key?(item_to_make)
  
  raise ArgumentError.new("Number of ingredients must be positive.") if num_of_ingredients <= 0
  
  #get quantity of ingredients needed 
  serving_size = library[item_to_make]
  #used to determine the remainding ingredients after
  remaining_ingredients = num_of_ingredients % serving_size
  
  surplus = ""
  if remaining_ingredients >= keys[1]
    surplus = "Make #{remaining_ingredients / library["cake"]} #{library.key(5)} and #{remaining_ingredients % library["cake"]} of #{library.key(1)}, or you can make #{remaining_ingredients} #{library.key(1)}."
  elsif remaining_ingredients != 0
    surplus = "You can also make #{remaining_ingredients} #{library.key(1)}"
  end
  
  
  if remaining_ingredients == 0
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: #{surplus}"
  end
  #two possibilities
=begin
  case remaining_ingredients
  when 0
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items:" surplus
  end
=end
end


p serving_size_calc("pie", 20)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("cookie", 20)

#  Reflection
=begin
What did you learn about making code readable by working on this challenge?

=> The thing that I learned is that it can be very difficult to read someone
=> else's code and determine exactly what is going on and what is meant to do.
=> Also, the simpler the code the easier it is to read. 

Did you learn any new methods? What did you learn about them?

=> We did not use any new methods or ideas.

What did you learn about accessing data in hashes? 

=> I did not learn anything new about hashes.

What concepts were solidified when working through this challenge?

=> Concepts like using hashes, flow control, and refactoring were solified during this
=> exercise. 
=end