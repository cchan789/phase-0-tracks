//I take an array of strings
//next created two variables
//one  variable for length
//one variable for index of the item associated with the length
//I iterate through each item of the array,counting each item length
//While iterating, if the length of the item is greater than my stored length,I change the stored index to cy current index.
//While iterating,if the length of the item is smaller than my stored length, do noyhing
//I end the iteration
//now I will return the string at the index variable for the given array


function longest_string (array) {
  var max_length = 0;
  var index_maxlen = 0;
  for ( i = 0; i < array.length; i ++){
    if (array[i].length > max_length){
      max_length = array[i].length;
      index_maxlen = i;
    }
    else {
      
    }
  }
  return array[index_maxlen];
}

var a = ["dhk", "hfjoorytgp", "iuyhro", "hfiurdo", "ko"];
var b = ['cat', 'boys', 'house','airplane', 'pancake' ];
var c = ['my','your  book', 'his oranges','history','geography'];
console.log(longest_string(a));
console.log(longest_string(b));
console.log(longest_string(c));

