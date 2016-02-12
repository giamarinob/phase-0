// function "sum"


function sum(array) {
  var totalSum = 0;
  // This is actually less efficient than the for loop but in the interest of trying different things
  array.forEach(function (i) {
    totalSum += array[i];
  })
  return totalSum;
};

//  function "mean"


function mean(array) {
  var totalSum = 0;
  array.forEach(function (i) {
    totalSum += array[i];
  })
  return (totalSum / array.length).toFixed(2);
};


// function "median"


function median(array) {
  if (array.length % 2 === 0) {
    return (array[array.length / 2] + array[(array.length / 2) - 1]).toFixed(2) / 2;
  } else {
    return array[Math.floor((array.length.toFixed(1) / 2))];
  }
};

// Function add:

// => As a user I want to take a list of numbers and find the sum of all the numbers
// => in that list.

// Function mean:

// => As a user I want to take a list of numbers and take the average of the numbers
// => in that list.

// Function median:

// => As a user I want to take a list of numbers and find the middle number of the list.