//

Cat = function(n, c) {
	this.name = n;
    this.color = c;
};

a = new Cat('Bill', 'Black');
b = new Cat('Jill', 'White');
console.log(a);
console.log(b);

Cat.prototype.newfkn = function(m) {
	return m + 1;
}
console.log(a.newfkn(6));
console.log(b.newfkn(66));


//a.prototype.asfkn = function(m) {
//	return m*3999;
//}

a.__proto__.asfkn = function(m) {
	return m*3999;
}

console.log(a.asfkn(6));
console.log(b.asfkn(9));

c = new Cat('thom', 'brown');
console.log(c.newfkn(77));
console.log(c.asfkn(77));

