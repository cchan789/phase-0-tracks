//I take an array of strings
//next created two variables
//one  variable for length
//one variable for index of the item associated with the length
//I iterate through each item of the array,counting each item length
//While iterating, if the length of the item is greater than my stored length,I change the stored index to cy current index.
//While iterating,if the length of the item is smaller than my stored length, do noyhing
//I end the iteration
//now I will return the string at the index variable for the given array

//this returns only the first largest string in case of tie length


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


//I take in two objects
//I initialize a return variable to false
//I iterate through the key-value pairs first object, comparing(checking if it is equal) it with each of the key-value pairs of the second object.
//If the two key-value pairs are equal I change the return variable to true and stop(break) the loop
//If the two key-value pairs are not equal, I continue looping
//end iteration of objects
//I return my return variable

function key_value_match(obj1,obj2){
  var boo = false;
  biggest_loop:
  for (var key1 in obj1){
    for (var key2 in obj2){
      if ((key1 == key2) && (obj1[key1] == obj2[key2])){
        boo = true;
        break biggest_loop;
      }
    }
  }
  return boo;
}

//I take in an integer
//I make a string with 52 characters (the 26 lowercase chars, and the 26 uppercase chars)
//I initialize an empty array
//I iterate the given number of times
//In each iteration, I generate a random string by making a blank string, and using a random number generator to pick a length for that string between 1- 10
//This opens up a new iteration, which repeats the generated length times, where I concatenate a random char from the 52 character string I made near the beginning into the empty string
//End the internal iteration
//I push the formerly blank string into the earlier initialized array
//end the external loop
//I return the array

function random_test_data(int) {
  var alpha = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
  var arr = [];
  for (i = 0; i < int; i++){
    var add_str = '';
    var rand_str_len = Math.floor(Math.random()*10+1);
    for (h = 0; h < rand_str_len; h++){
      add_str = add_str + alpha.charAt(Math.floor(Math.random()*52+1));
    }
    arr.push(add_str);
  }
return arr;
}

var a = ["dhk", "hfjoorytgp", "iuyhro", "hfiurdo", "ko"];
var b = ['cat', 'boys', 'house','airplane', 'pancake' ];
var c = ['my','your  book', 'his oranges','history','geography'];
console.log(longest_string(a));
console.log(longest_string(b));
console.log(longest_string(c));

console.log('');

var d = {name:"joe", age: 35};
var e = {name:"bob", age: 27};
var f = {name:"joe", age: 27};
console.log(key_value_match(d,e));
console.log(key_value_match(d,f));
console.log(key_value_match(e,f));

console.log('');

for (z = 0; z < 10; z++){
  var k = Math.floor(Math.random()*10+1);
  var tmp_arr = random_test_data(k);
  console.log(tmp_arr);
  var st = longest_string(tmp_arr);
  console.log(st);
}
