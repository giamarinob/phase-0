# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
# use list.split to make an array
# iterate over array to put keys into a hash
# set default quantity to 1
# print the list to the console [can you use one of your other methods here?]
#use a loop to print a list
# output: [returns a hash]
def create_list(list)
  new_list=Hash.new()
  array=list.split(" ")
  array.each do |item|
    new_list[item] = 1
  end
  print_list(new_list)
  return new_list
end

# Method to add an item to a list
# input: item name and list and optional quantity
# steps: Check for the existence of the optional quantity
# => If there isn't an quantity. Add the item to the list # #with a value of 1
#If there is a quantity then we'll add the item to the list #with the quantity
# output: Appended list


def add_item(item, list, quantity=1)
  if !list.has_key?(item)
    list[item] = quantity
    return list
  else
    list[item] += quantity
    return list
  end
end

# Method to remove an item from the list
# input:Item to be removed, the list itself
# steps: First check to see if item is on the list
#  If it isn't just return the list
#  if it is then remove the item from the list.
# output:New list

def remove_item (item, list)
  list.delete(item)
  return list
end

# Method to update the quantity of an item
# input: list, name of item, new quantity
# steps: check to see if the item is on list, if is: change value, else: return list
# output: new list

def update_item(item, list, quantity)
  if list.has_key?(item)
    list[item] = quantity
    return list
  else
    return list
  end
end

# Method to print a list and make it look pretty
# input: list
# steps: iterate over list, print each item and associated quantity in list
# output: none

def print_list(list)
  list.each do |key, value|
    puts key + " " + value.to_s
  end
end


list = create_list("fish potato carrot lettuce")
remove_item("tomato", list)
list = delete_list("fish", list)
list = update_item("potato", list, 3)
list = add_item("lemonade", list, 2)
print_list(list)

=begin
What did you learn about pseudocode from working on this challenge?
  
=> The thing I've learned the most about pseudocode is that it's sometimes
=> harder to write good pcode than it is to write actual code. Making sure to 
=> keep the pcode general is really difficult because as you're writing pcode
=> you have in your mind actual code equivalents to the pcode you're writing/

What are the tradeoffs of using Arrays and Hashes for this challenge?

=> We went with arrays right off the bat. In this challenge they were just so much
=> easier to work with for us. The nice thing about hashes is that the creating line
=> and access syntax are the same. If you try to access something that isn't there
=> the hash will create it, and if it's in there you update the value the same as
=> if you were adding a new key/value pair. Beyond that, if you wanted to keep the
=> quantity of items along with the item you would probably need multi-dimensional
=> arrays. That can get messy, especially when you have a simple list like this.

What does a method return?

=> A method returns an object. It could be a hash, an integer, whatever you want almost.
=> It could return nothing if you didn't want it to also. Like the print method doesn't 
=> return anything it just performs a block of code. 

What kind of things can you pass into methods as arguments?

=> Anything that a method can return is what could be paseed in. Including nothing.

How can you pass information between methods?

=> The way we did it was through local variables. the tricky part is keeping track of
=> variable names as you change scope. Making sure everything stays consistent within
=> the scope of wherever you're operating is key. 

What concepts were solidified in this challenge, and what concepts are still confusing?

=> Definitely pcode and hashes. I also continued to gain familiarity with the 
=> ruby-docs. They are an incredible resource for checking syntax or using enumerbales
=> when refactoring. 
=end