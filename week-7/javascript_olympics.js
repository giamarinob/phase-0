// JavaScript Olympics

// I paired [by myself, with:] on this challenge.

// This challenge took me [#] hours.


// Warm Up




// Bulk Up
function win (athlete) {
  console.log(athlete[0] + " won the " + athlete[1]);
};

win(["Sarah Hughes", "Ladies Singles"])

// Jumble your words
function reverse (array) {
 return array.split("").reverse().join("")
   
}
console.log(reverse("marti"))

// 2,4,6,8
function even (array) {
  var evens = [];
  for (var i = 0; i < array.length; i++) {
    if (array[i] % 2 === 0) {
      evens.push(array[i]);
    };
  };
  return evens;
}

console.log(even([2, 3, 4, 5, 1, 5, 14, 13, 12]));

// "We built this city"
class Athlete {
  constructor(name, age, sport, quote){
    this.name = name;
    this.age = age;
    this.sport = sport;
    this.quote = quote;
    }
};
var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")

console.log(michaelPhelps.constructor === Athlete)

console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection
// What JavaScript knowledge did you solidify in this challenge?

// => Creating functions, iterating over arrays, and using methods to do work. 

// What are constructor functions?

// => Constructor functions are special class functions that run upon initiation of an instance of a class.

// How are constructors different from Ruby classes (in your research)?

// => They work pretty much the same way constructors in ruby work. 