
class P1
	def pepper_m1
		'pepper_m1'
	end
end

p1 = P1.new
puts p1
puts P1.instance_methods.grep(/^pepper/).to_s

class P1
	def pepper_m2
		3456
	end
end

puts p1
puts P1.instance_methods.grep(/^pepper/).to_s

puts p1.class.superclass

class Object
	def pepper_m3
		'hello'
	end
end

puts p1.pepper_m3