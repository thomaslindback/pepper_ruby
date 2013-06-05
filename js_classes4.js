function N () { 
};

N.prototype = {
	m1: function() {
		return 6;
	},
	m1: function(n) {
		return n;
	},
	m2: function() {
		return 7;
	}
};

var a1 = new N;
console.log(a1.m1());
console.log(a1.m1(66));
console.log("--------");

function addMethod(object, name, fn){ 
  // Save a reference to the old method 
  var old = object[ name ]; 
 
  // Overwrite the method with our new one 
  object[ name ] = function(){ 
    // Check the number of incoming arguments, 
    // compared to our overloaded function 
    if ( fn.length == arguments.length ) 
      // If there was a match, run the function 
      return fn.apply( this, arguments ); 
 
    // Otherwise, fallback to the old method 
    else if ( typeof old === "function" ) 
      return old.apply( this, arguments ); 
  }; 
} 

function M() { 
	addMethod(this, "m1", function(){ 
    	return 6; 
  	}); 
	addMethod(this, "m1", function(n){ 
    	return n; 
  	}),
	addMethod(this, "m1", function(n, m){ 
    	return n + m; 
  	}); 
}


var a1 = new M;
console.log(a1.m1());
console.log(a1.m1(66));
console.log(a1.m1(66, 34));
