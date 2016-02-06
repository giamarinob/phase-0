# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:1
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:2
# ============================================================
# p hash[outer:][inner:]["almost"][3]
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:3
# ============================================================
# nested_array[:array][1][:hash]
# p nested_array[:array][1][:hash]
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.each do |element|
  if element.kind_of?(Array)
    element.each {|inner| p inner + 5}
  else
    p element + 5
  end
end
# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

# startup_names.each do |index|
#   if index.kind_of?(Array)
#     index.each do |inner|
#       if inner.kind_of?(Array)
#         inner.each do |innerer|
#           # innerer.each { |element| p element + "ly"}
#           p innerer + "ly"
#         end
#       else
#         p inner + "ly"
#       end
#     end
#   else
#     p index + "ly"
#   end
# end

# startup_names.flatten!(2)
# startup_names.each { |x| p x + "ly"}

arr = startup_names.join(" ").split(" ")
arr.each {|name| p name + "ly"}

# Release
=begin
What are some general rules you can apply to nested arrays?

=> I'm not really sure to be honest. It's easy for them to become extremely
=> complicated quickly. Also, enumberales and methods are a must for navigating them
=> with anything resembling efficiency.

What are some ways you can iterate over nested arrays?

=> The .each method is an obvious example or using loops. There are many methods that
=> will perform some action on an array that have, as a default, iterating features
=> built into the method. There are also enumerables that will perform some
=> function that go through each element in the process. 

Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?

=> The idea to use .join.split is one I'm going to have to rememeber for the future. 
=> It can flatten an array of n dimensions instead of using flatten which needs to 
=> know how many dimensions to flatten. 
=end