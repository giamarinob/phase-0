// DOM Manipulation Challenge


// I worked on this challenge [with: Cyrus].


// Add your JavaScript calls to this page:

// Release 0:
var r1 = document.getElementById('release-0');
r1.setAttribute('class', 'done');



// Release 1:
var r2 = document.getElementById('release-1');
r2.style.display = 'none';



// Release 2:

var r3 = document.getElementsByTagName('h1')[0];
r3.innerHTML = 'I completed release 2!';


// Release 3:
var r4 = document.getElementById('release-3');
r4.style.backgroundColor = '#955251';



// Release 4:
var r5 = document.getElementsByClassName('release-4');
for (var i = 0; i < r5.length; i++) {
  r5[i].style.fontSize = '2em';
}



// Release 5:
var hidden = document.getElementById('hidden');
document.body.appendChild(hidden.content.cloneNode(true));