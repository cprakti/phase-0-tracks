// Create variable that contains an array of strings
// Create function that accepts an array as a parameter
// Inside the function loop through array and find length of each string
// Store string as key and length as value in object
// Sort keys by largest value from largest to smallest
// Return first key

var exampleArray = ["longest phrase", "long phrase", "longer phrase"];
var lengths = {};
function longestItem(exampleArray) {
  for ( var i = 0; i < exampleArray.length; i++ ){

    lengths[exampleArray[i].length] = exampleArray[i];
  };
  console.log(lengths.valueOf(-1));
};


longestItem(exampleArray);