
class A1
	def pepper_m1
		'pepper_m1'
	end
end

p1 = A1.new
puts p1
puts A1.instance_methods.grep(/^pepper/).to_s
puts p1.class.superclass

class Object
	def pepper_m3 n		
		"pepper_m3 in Object n = #{n}"
	end
end

puts A1.instance_methods.grep(/^pepper/).to_s
puts p1.class.superclass

class A1
	def pepper_m2 n
		"#{n} = #{self.pepper_m3 55}"
	end
end

puts p1.pepper_m2 11
puts ""

class Y	
end

y = Y.new
p y

Y::class_eval{ define_method(:abc) { "I am new" }}

p y.abc