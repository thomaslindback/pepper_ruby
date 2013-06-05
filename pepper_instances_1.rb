class Q
	puts '-> Q'
end

q1 = Q.new
q2 = Q.new
p q1
p q2

class Q
	def met1
		puts "#{self} , met1"
	end
end

def q1.met2
	puts "#{self} , met2"
end

q1.met1
q2.met1

q1.met2
#q2.met2






class Q
	def method_missing name, *args
		puts( "Class #{self.class} does not understand: #{name}( #{args.inspect} )" )
	end
end

q2.met2

puts "---------"

class Y < Q

	def aaa
		puts( "aaa method" )
	end

	remove_method( :aaa )
end

class Z < Y
	def method_missing( methodname, *args )
		super
		puts( "Now creating method #{methodname}( )" )
		self.class.send( :define_method, methodname, lambda{ |*args| puts( args.inspect) } )
	end	
end


ob = Q.new
ob.aaa( 1,2,3 )
ob2 = Y.new
ob2.ccc( "hello world" )
ob3 = Z.new
ob3.ddd( 1,2,3)
ob3.ddd( 4,5,6 )