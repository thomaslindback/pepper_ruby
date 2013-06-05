#
class A
	def initialize m
		@m1 = m
	end
	def m_1 n
		@m1 += n
	end
end

a = A.new 45
p a
p a.class
p a.class.superclass
p a.methods.to_s
p A.instance_methods.grep(/^m_/).to_s
a.m_1 55
p a
puts ""


class A
	def m_2 n
		@m2 = @m1 + n
	end
end

#p a.class
#p a.class.superclass
#p A.instance_methods.grep(/^m_/).to_s
#a.m_2 22
#p a
puts ""

arr = [2,3,4,5]
#p arr
#p arr.class


class Array
	def jabbadabbadoo
		collect {|x| "jabba_#{x}!" }
	end
end

#p arr.jabbadabbadoo
#puts Array.instance_methods.grep(/^jabba/).to_s

class EE
	def met n, m
		n + m+1
	end
	def met n
		n+1
	end
end

ee = EE.new
p ee
p ee.met 4 


