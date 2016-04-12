// Create function in Javascript that has a parameter for the word that we want to reverse.
// Loop through each character in the provided argument, starting with the last character, and return the character.
// After the first character has been returned, each subsequent loop should add the next character to the string.
// Once all characters have been returned and added to the string, end the loop.

function reverse(str) {
  var backStr = ""
  for ( var i = str.length; i >= 0; i--) {
    backStr += str.charAt(i);
  }
  return backStr;
}

var revHello = reverse("hello");

if (2 > 1) {
  console.log(revHello);
}