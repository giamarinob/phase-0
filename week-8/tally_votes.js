// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: Victor Wong, Ben Giamarino
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1, },
    vicePresident: { Devin: 1, Bob: 1},
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
// Go through all the ballots cast by the voters
// => Go through each vote of each ballot for pres, vice pres, etc..
// => Check to see if the person who recived a vote for that position has ever recived a vote.
// =>=> If they have then increase their amount of votes for that position by 1
// =>=> If the haven't then add their name to the position and give them a vote of 1.

// Go through all the votes for each position
// => If that person's total votes is larger than the current highest vote getter then 
// => make that person the current office holder for that position and make their number of
// => votes the current highest number of votes.
// => Do that for every position. 

// __________________________________________
// Initial Solution





for (var vote in votes) {
//  vote = Alex, Bob, Cindy... 
  for (var ballot in votes[vote]) {
//   ballot = Bob, Devin, Gail...
    if (voteCount[ballot].hasOwnProperty(votes[vote][ballot])) {
        voteCount[ballot][votes[vote][ballot]] += 1;
        }
        else {
        voteCount[ballot][votes[vote][ballot]] = 1;
        }
      console.log(votes[vote][ballot]);  
  }
}


for (var post in voteCount){
  var max_vote = 0;
  for (var name in voteCount[post]) {
    
    if (voteCount[post][name] > max_vote) {
      officers[post] = name;
      max_vote = voteCount[post][name];
    }
    
    
  }
  
}







// __________________________________________
// Refactored Solution


for (var vote in votes) {
  for (var ballot in votes[vote]) {
    if (voteCount[ballot].hasOwnProperty(votes[vote][ballot])) {
      voteCount[ballot][votes[vote][ballot]] += 1;
    }
    else {
      voteCount[ballot][votes[vote][ballot]] = 1;
    } 
  }
}

for (var post in voteCount){
  var max_vote = 0;
  for (var name in voteCount[post]) {
    if (voteCount[post][name] > max_vote) {
      officers[post] = name;
      max_vote = voteCount[post][name];
    }
  }
}






// __________________________________________
// Reflection
// What did you learn about iterating over nested objects in JavaScript?

// => It is very difficult to keep track of everything. First of all there is the different 
// => syntax to make sure you're using correctly. Then it's the syntax to access the right thing.
// => We spent most of our time just logging output to the console to get the correct syntax to access 
// => the values we wanted to access. Once we figured out the correct syntax we had the right logic in place
// => to do what we wanted to do with the value. It was simply a matter of getting the correct value. 

// Were you able to find useful methods to help you with this?

// =>Yes, we found the .hasOwnProperty() which allowed us to look at the different positions and check to see if a name
// => was already a current property of the position. We then used flow control to determine what the program
// => should do if it is or isn't.

// What concepts were solidified in the process of working through this challenge?

// => Iterating and nesting were the two biggest concepts. Combining the two concepts if I am to be more specific. 
// => Like I mentioned previously, getting the correct syntax to access the exact values we wanted to access was 
// => hardest part of the challenge. 
// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)