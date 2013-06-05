class Base
	attr_accessor :name, :row

	def initialize name, row
		@name = name
		@row = row
	end

	def change name, row
		@name = name
		self.row=(row)
	end
end

class A < Base
	def initialize source
		super 'A', 4
		@source = source
	end
end

a = A.new 't.cpp'
p a
a.change 'rob', 55
p a

p a.class
p a.class.superclass
p a.class.superclass.superclass
puts ""
p a.kind_of? Base
p a.kind_of? A
p a.instance_of? A
p a.instance_of? Base

# method defined last rules
class T
	def a name
		@name = name
	end
	def a name, status
		@name = name
		@status = status
	end 
end

t = T.new
p t
t.a 'thom', 55
p t
#t.a 'thom'
p t




class R
  def initialize
    @geek = "Thomz"
  end
end
obj = R.new
p obj
# instance_eval can access obj's private methods
# and instance variables
obj.instance_eval {
  p self 
  p @geek
}

