// I get a string.
//I split up the characters 
//I put the characters in an array
//I get the number of characters on the string =.length
//I make a empty string
//I loop through the arraay from the back, adding each character to the created empty string
//I return the string


function reverse(input) {
  var input = String(input);
  var arr = input.split('');
  var len = input.length;
  var str = '';
  for (i = len - 1; i >= 0; i--){
    str = str + arr[i];
  }
  return str;
}

var rev1 = reverse("Good Day");
//console.log(reverse("hello"));
if (4 == 4) {
console.log(rev1);
}