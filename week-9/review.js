// Method to create a list
// input: String of items to place in a grocery list with no repeats
// Pseudocode:
// Take a list of items and seperate them into individual items.
// Go through each item and add them to a list that will have the item and the number of each needed
// Give them a default value of 1 as they are added to the list.
// Send back the new list with each individual item and a quantity of 1.
// Output: new list with each individual item and a quantity of 1

function create_list(list) {
  var grocery_list = new Object();
  var arr = list.split(" ");
  for (var i = 0; i < arr.length; i++) {
    grocery_list[arr[i]] = 1;
  }
  print_list(grocery_list);
  return grocery_list;
}


// Method to add an item to the list
// input: Name of the item to be added, the list to add it to, and an optional quantity
// Pseudocode:
// Check to see if the item exists on the list 
// Add the item to the list with the quantity
// Output: Appended list

function add_item(item, list, quantity) {
  if (quantity === undefined) {
    quantity = 1;
  }
  if (list[item] === undefined) {
    list[item] = quantity;
  }
  else {
    list[item] += quantity;
  }
  return list;
}

// Method to remove an item
// Input: Item to remove and the list to remove it from
// Pseudocode:
// Check the list to see if the item exists
// If it does delete the item, if it doesn't then just return the list
// Output: Edited list

function remove_item(item, list) {
  if (list[item] === undefined) {
    return list;
  }
  else {
    delete list[item];
    return list;
  }
}

// Method to update the quantity of an item
// Input: Item to update, list to update, new quantity to add
// Pseudocode:
// Check to see if the item is on the list
// If it is update the list with the new quantity otherwise just return the list
// Output: Updated list

function update_item (item, list, quantity) {
  if (list[item] !== undefined) {
    list[item] += quantity;
    return list;
  }
  else {
    return list;
  }
}

// Method to print a list
// Input: list to print
// Pseudocode:
// Go through the list and print each item
// Output: Printed list to console.

function print_list(list) {
  console.log("Item => Quantity");
  for(var item in list) {
    console.log(item + " => " + list[item]);
  }
}






// Refactored Solution:

function GroceryList (list) {
  this.list = list.split(" ");
  this.grocery_list = new Object();
  
  this.create_list = function () {
    for (var item in this.list) {
      this.grocery_list[this.list[item]] = 1;
    }
    this.print_list();
  }


  // Method to add an item to the list
  this.add_item = function (item, quantity) {
    if (quantity === undefined) {
      quantity = 1;
    }
    if (!this.grocery_list.hasOwnProperty(item)) {
      this.grocery_list[item] = quantity;
    }
    else {
      this.update_item(item, quantity);
    }
  }

  // Method to remove an item
  this.remove_item = function (item) {
    if (this.grocery_list.hasOwnProperty(item)) {
      delete this.grocery_list[item];
    }
  }

  // Method to update the quantity of an item
  this.update_item = function (item, quantity) {
    if (this.grocery_list.hasOwnProperty(item)) {
      this.grocery_list[item] += quantity;
    }
  }

  // Method to print a list
  this.print_list = function () {
    console.log("Item => Quantity");
    for(var item in this.grocery_list) {
      console.log(item + " => " + this.grocery_list[item]);
    }
  }
}






// Driver Code

// This Code is for the initial solution => It will not work with refactored solution!

var init_list = create_list("carrots potatoes cereal milk eggs bread beans");
init_list = add_item("cookies", init_list, 2);
init_list = add_item("carrots", init_list, 3);
init_list = remove_item("potatoes", init_list);
init_list = update_item('eggs', init_list, 1);
print_list(init_list);

// Refactored Solution Driver Code

var ref_list = new GroceryList("carrots potatoes cereal milk eggs bread beans");
ref_list.create_list();
ref_list.add_item("cookies", 2);
ref_list.add_item("carrots", 3);
ref_list.remove_item("potatoes");
ref_list.update_item('eggs', 1);
ref_list.print_list();


// Reflection

// What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)

// => I solidified handling objects. For the refactored solution I sort of went in a different
// => direction. I was still rusty with constructors with objects. I therefore decided to
// => experiment with this by putting all the methods in a new object. Now I will admit
// => from the start that it probably makes more sense to simply make a class and handle
// => it that way, but I wanted to do it within an object because I was not as comfortable
// => with that particular procedure. I really have to say it was a good idea because
// => I learned a lot as I struggled with the syntax. I also saw why you need to be careful
// => when using the for...in loop with arrays. That loop is designed for objects, and it
// => even tells you not to use it with arrays in the JS MDN. When using it with arrays you 
// => have to understand that the variable will be the index not the element. I understand
// => now why it's better to simply use a standard for loop for arrays and the for...in 
// => should be reserved for objects. 

// What was the most difficult part of this challenge?

// => The most difficult was figuring out how to make the change from seperate functions
// => to including them all under one object. It was a difficulty soley brought on by
// => myself, but it was necessary so that I would learn it. The initial solution was
// => pretty simple all things considered. The only thing was making sure I used the correct
// => JS syntax and not the syntax of Ruby.

// Did an array or object make more sense to use and why?

// => I determined an object was the best way to do this for the same reason hashes
// => were a better reason for this challenge in ruby. The object using keys and values
// => makes much more sense and is simpler than using multi-dimensional arrays. 