 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: The player will try to beat Donald Trump in an election
// Overall mission:The overall mission will be to use certain tactics to obtain to gain 100% of the vote.
// Goals: Gain 100% of the vote
// Characters: Player character controlled by user will battle Trump in an election
// Objects: Donald Trump, Player Character
// Functions: Attack, Take a Poll, Display Polls

// Pseudocode
// Create Donald Trump and Player character with starting stats
// Have a way to attack a candidate with certain types of attacks.
// 
//
//

// Initial Code
// This would probably be better done with classes since both Donald and the player character are sort of the same type of object. However, since the challenge
// would like us to use 2 objects and 2 functions it will be designed as such.
var donald = {
  // Initial starting stats
  name: "The Donald",
  pollNumber: 50,
  weakness: "constitutional",
  strength: "emotionalism"
  
};

var playerCharacter = {
  //Initial Starting Statss
  name: "Player",
  pollNumber: 50,
  weakness: "populism",
  strength: "constitutional"
  
};

function attack(attacker, defender, arguement) {
  var chanceOfSuccess = 0;
  // Certain attacks have a base chance of succeeding
  switch (arguement) {
    case 'constitutional':
      chanceOfSuccess += 0.35;
      break;
    case 'emotionalism':
      chanceOfSuccess += 0.45;
      break;
    case 'populism':
      chanceOfSuccess += 0.55;
      break;
    case 'logic':
      chanceOfSuccess += 0.25;
      break;
    default:
      //PlayerCharacter has inherent disadvantage against Donald
      if (defender === playerCharacter) {
        chanceOfSuccess += 0.3;
      }
      else {
        chanceOfSuccess += 0.15;
      }
  }
  // Certain attacks can be very effective or very ineffective
  if (defender.weakness === arguement) {
    chanceOfSuccess += 0.6;
  }
  else if (defender.strength === arguement) {
    chanceOfSuccess -= 0.5;
  }
  
  //Who knows with today's voting puplic what's effective and what isn't
  var resultOfAttack = Math.random() * chanceOfSuccess;
  //Testing output.
  // console.log(resultOfAttack);
  //A successful attack will get you 50% times how effective the attack was. Failure costs you 25% of the chance of success
  if (resultOfAttack >= 0.5) {
    console.log("The arguement of " + arguement + " was successful! Barely! " + defender.name + " was left flabergasted and bumbling!");
    takePoll(attacker, defender, resultOfAttack * 50);
  }
  else {
    console.log(defender.name + " obfuscated your argument of " + arguement + ". Your argument was unsuccessful");
    takePoll(defender, attacker, resultOfAttack * 25);
  }
  
  
}
// This will change the poll numbers based on the candidates attack
function takePoll(winner, loser, change) {
  // If an attack was so ineffective it resulted in a negative result then the attacker loses 25% automatically
  if (change <= 0) {
    change = 25;
  }
  
  winner.pollNumber += Math.floor(change);
  loser.pollNumber -= Math.floor(change);
  
  displayPolls();
}
// This will display the current polls as well as check if the election is over.
function displayPolls() {
  //If the player gets to 0 percent in the polls they lose and if they get to 100 percent they win.
  if (playerCharacter.pollNumber <= 0) {
    console.log("The election is over! The winner is " + donald.name + "! Let the comedy begin.");
  }
  else if (playerCharacter.pollNumber >= 100) {
    console.log("The election is over! You have beaten " + donald.name + " and avoided utter disaster. For now...");
  }
  else {
    console.log("The election is still too close to call!");
    console.log(donald.name + " currently stands at " + donald.pollNumber);
    console.log("You are currently at " + playerCharacter.pollNumber + " in the polls. Keep fighting!");
  }
}


//Driver Code - Result will vary due to randomness
attack(playerCharacter, donald, "emotionalism");
attack(donald, playerCharacter, "constitutional");
attack(playerCharacter, donald, "constitutional");
attack(donald, playerCharacter, "gibberish");
attack(donald, playerCharacter, "populism");
attack(playerCharacter, donald, "logic:");
attack(donald, playerCharacter, "constitutional");


// Reflection:
// What was the most difficult part of this challenge?

// => First figuring out what I wanted to do that might be at all original or creative. I wanted to
// => avoid coming up with obvious ideas. Beyond that. I had played around with the idea of having these
// => functions repeated in the objects themselves. I ended up going the route I did because of DRYness. 
// => Initially, however, I had the two objects with functions defined inside them so you could do donald.attack
// => or playerCharacter.attack. I ended up choosing not to do it that way, but I could understand the arguement for doing so.
// => As I mentioned above this would probably be best done in classes instead of objects because both objects
// => are very similar with the same stats, just differnet values. I also would like to add functionality
// => to get user input to play the game and put the game through a while loop while the players poll number
// => is not 0 or 100. However, I have not figured out how to get input from the terminal. the prompt command
// => gives me an error which I haven't been able to work around yet. More understanding is needed. 

// What did you learn about creating objects and functions that interact with one another?

// => It was more about reinforcing how to access values in an object, and reinforcing syntax in JS. 
// => I didn't use any iteration or anything like that, so I didn't have the opportunity to use new built
// => in methods. This was more about reinforcing existing concepts or me. 

// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?

// => I mainly implemented flow control techniques with if statements. I didn't really implement any new methods
// => in this solution. 

// How can you access and manipulate properties of objects?

// => I implemeneted the dot method to access and change values of an object. I could have also used the bracket method,
// => but I feel dot notation is a bit cleaner. Since my keys were all able to implement dot method that's what
// => I decided to implement in my solution.