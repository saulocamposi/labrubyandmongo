console.log("Starting Seed")

var intervalcollection =  Math.floor((Math.random()*10)+1);

var students = [
  {name: "Dale Cooper", class: "calculus", tests:[30, 28, 45]},
  {name: "Harry Truman", class: "algebra", tests:[30, 28, 45]},
  {name: "Harry Potter", class: "boolean algebra", tests:[30, 10, 45]},
  {name: "Maria Bonita", class: "college algebra", tests:[12, 28, 45]},
  {name: "David Copperfield", class: "geometry", tests:[30, 28, 45]},
  {name: "Gisele Bundchen", class: "calculus", tests:[30, 34, 45]},
  {name: "Alice Cooper", class: "geometry", tests:[20, 28, 45]}
];

var tostringify = JSON.stringify(students);
var toparse = JSON.parse('{ "name": "Dale Cooper", "class": "calculus", "tests":[30, 28, 45]}');



//obj.push({name: "Alice Cooper", class: "geometry", tests:[20, 28, 45], extra: "Astronomy"});

//obj.push({name: "Alice Cooper", class: "geometry", tests:[20, 28, 45], extra: "Astronomy", active: "true"});

//console.log(students);
console.log(tostringify);
console.log(toparse);
