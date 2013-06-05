
class P
	def pepper_m n
		n+1
	end
end

p = P.new
puts p.methods.to_s
puts P.instance_methods.grep(/^pepper_/).to_s
puts p.class.superclass

class Object
	def pepper_o	
		4
	end
end

def pepper_g	
	4
end

puts p.class.superclass.methods.grep(/^pepper/).to_s

puts self.class.methods.grep(/^pepper/).to_s

print pepper_g.class.superclass.superclass.superclass
