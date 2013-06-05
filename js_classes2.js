function Ninja(){} 
 
Ninja.prototype.swingSword = function(){ 
  return true; 
}; 
 
var ninjaA = Ninja(); 
console.log(ninjaA);
 
var ninjaB = new Ninja(); 
console.log(ninjaB.swingSword());

function Ninja(){ 
  this.swingSword = function(){ 
    return true; 
  }; 
} 
 
// Should return false, but will be overridden 
Ninja.prototype.swingSword = function(){ 
  return false; 
}; 
 
var ninja = new Ninja(); 
console.log( ninja.swingSword(), "Calling the instance method, not the prototype method." );

function Ninja(){ 
  this.swung = true; 
} 
 
var ninjaA = new Ninja(); 
var ninjaB = new Ninja(); 
 
Ninja.prototype.swingSword = function(){ 
  return this.swung; 
}; 
 
console.log( ninjaA.swingSword(), "Method exists, even out of order." ); 
console.log( ninjaB.swingSword(), "and on all instantiated objects." );

function Ninja(){ 
  this.swung = true; 
} 
 
var ninjaA = new Ninja(); 
var ninjaB = new Ninja(); 
 
Ninja.prototype.swing = function(){ 
  this.swung = false;
  return this;
}; 

console.log( !ninjaA.swing().swung, "Verify that the swing method exists and returns an instance." ); 
console.log( !ninjaB.swing().swung, "and that it works on all Ninja instances." );