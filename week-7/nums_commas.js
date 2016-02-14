// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode
// Take a number as an argument
// Convert number to string then turn into an array
// Reverse array and then splice into 3 parts
// Join comma to end of arrays and then reverse again
// Print the result
// Initial Solution
function seperateComma(number)
{
  var array_number = number.toString().split('').reverse();
  var empty_array = [];

  if (array_number.length <= 3)
    {
      console.log(number);
    }
  else
  {
    while (array_number.length > 3)
    {
      empty_array = empty_array.concat(array_number.splice(0, 3));
      empty_array.push(",");
    }
    empty_array = empty_array.concat(array_number); 
    console.log(empty_array.reverse().join(""));
    }
}

// Refactored Solution

function seperateComma(number)
{
  var array_number = number.toString().split('').reverse();
  var empty_array = [];

  while (array_number.length > 3)
    {
      empty_array = empty_array.concat(array_number.splice(0, 3));
      empty_array.push(",");
    }
    empty_array = empty_array.concat(array_number); 
    console.log(empty_array.reverse().join(""));
}


// Your Own Tests (OPTIONAL)
seperateComma(123)
seperateComma(1000000)


// Reflection
// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

// => It was very interesting. The challenge was the subtle differences in how the methods work compared to Ruby.$

// What did you learn about iterating over arrays in JavaScript?

// => We ended up using a while loop to iterate in chunks instead of iterating over each element.

// What was different about solving this problem in JavaScript?

// => Using the methods were a little different. For example, the splice() method needed slightly 
// => different arguments to do the same thing in ruby. Also, we had to set the concat equal to the original
// => array which you didn't have to do in ruby. 

// What built-in methods did you find to incorporate in your refactored solution?

// => .split() to split the string into an array and then .reverse() to reverse the array. Then
// => we concat() the first three numbers of the array, which we grabbed with .splice(), into a new array.
// => Then we .push() a comma. Then we .reverse the new array and .join() the array into a string.