
class P
	@@instances = 0

	def initialize(a)
		@a = a
		@@instances += 1
	end

	def calc x
		@a += x
	end

	def nums
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

puts p1.nums

p2 = P.new 66
puts p2.nums
puts p2.inspect
p2.other
puts p2.inspect

