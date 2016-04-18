// Release 0:

// Create variable that contains an array of strings
// Create function that accepts an array as a parameter
// Inside the function, loop through array and find length of each string
// Store string as key and length as value in object
// Sort keys by largest value from largest to smallest
// Return first key
var exampleArray = ["longest phrase", "long phrase", "longer phrase"];
var fruits = ["apple", "banana", "orange"];
var sports = ["soccer", "basketball", "golf"];


function longestItem(exampleArray) {
var largestNum = 0;
var longestStrings = [];
  for ( var i = 0; i < exampleArray.length; i++ ){
    if (exampleArray[i].length > largestNum) {
      largestNum = exampleArray[i].length;
    }
  }
  for ( var i = 0; i < exampleArray.length; i++ ){
    if (exampleArray[i].length == largestNum) {
      longestStrings += (exampleArray[i]) + " ";
    }
  }
  return longestStrings
};


// Release 1:
var personOne = {name: "Steven", age: 54, gender: "male"};
var personTwo = {name: "Tamir", age: 54, gender: "male"};

// if (personOne.name == personTwo.name) {
//   console.log(true);
// } else if (personOne.name == personTwo.age) {
//   console.log(true);
// } else if (personOne.age == personTwo.age) {
//   console.log(true);
// } else if (personOne.age == personTwo.name) {
//   console.log(true);
// } else {
//   console.log(false);
// }

function compare(personOne, personTwo) {
  for (var prop in personOne) {
    console.log(personOne[prop] == personTwo[prop]);
  }
}

// Driver code for Release 0:
console.log(longestItem(exampleArray));
console.log(longestItem(fruits));
console.log(longestItem(sports));

// Driver code for Release 1:
compare(personOne,personTwo);

