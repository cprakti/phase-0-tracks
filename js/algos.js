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

console.log(longestItem(exampleArray));
console.log(longestItem(fruits));
console.log(longestItem(sports));
