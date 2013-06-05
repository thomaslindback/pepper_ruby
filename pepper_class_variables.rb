
class P
	@@instances = 0
	HEIGHT = 200
	def initialize(a)
		@a = a
		@@instances += 1
	end

	def calc x
		@a += x
	end

	def number_instances
		@@instances
	end

	def other
		@b = 77
	end
end

p1 = P.new(1)

puts p1.inspect
p1.calc 55
puts p1.inspect
puts p1.number_instances

p2 = P.new 66
puts p2.number_instances
puts p2.inspect
p2.other
puts p2.inspect


p3 = P.new 100
puts p3.number_instances
p P::HEIGHT
