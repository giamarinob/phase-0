// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var myVar = 0;
myVar += 100;

// User interaction.
// prompt("What's your favorite food?", "Type food here");
console.log("Hey! That's my favorite food too!");
// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
for (var i = 1; i < 101; i++) {
  if (i < 3) {
    console.log(i);
  }
  else if (i % 3 == 0 && i % 5 == 0) {
    console.log("FizzBuzz");
  }
  else if (i % 3 == 0) {
    console.log("Fizz");
  }
  else if (i % 5 == 0 && i % 3 != 0) {
    console.log("Buzz");
  }
  else {
    console.log(i);
  }
}


// Functions

// Complete the `minimum` exercise.
function min(x, y) {
  if (x < y) {
    return x;
  }
  else {
    return y;
  }
}
// Testing
console.log(min(1, 2));
console.log(min(1345, 32));
console.log(min(10, 2));
console.log(min(1, -2));

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name: "Ben Giamarino",
  age: 28,
  FavoriteFoods: ["chicken", "bbq", "ice-cream"],
  quirk: "I have memorized all the decimal equivalents from 0-1 by the 1/16"
};