var colors = ["red", "blue", "green", "yellow"];
var names = ["go_get_em", "racer", "shaker", "oatmeal"];

colors.push("orange");
names.push("cinnamon");

var horse_obj = {};

// makes object by looping arrays
for (var i = 0; i < names.length; i++) {horse_obj[names[i]] = colors[i];}
console.log(horse_obj)

// Constructor function
function Car(make, model, color, age, miles){
	this.make = make;
	this.model = model;
	this.color = color;
	this.age = age;
	this.miles = miles;
	this.rev_engine = function(){console.log("Vroooom!");};
}

var car1 = new Car("Ford", "Mustang", "red", 0, 100);
console.log(car1);
console.log("Lets hear the engine...");
car1.rev_engine();
console.log("----");

var car2 = new Car("Chevy", "Corvette", "black", 0, 100);
console.log(car2);
console.log("Lets hear the engine...");
car2.rev_engine();
console.log("----");

// For/In loop iteraetes through object
var text = "";
var x;
for (x in car1) {
    text += car1[x] + " ";
}

console.log(text);