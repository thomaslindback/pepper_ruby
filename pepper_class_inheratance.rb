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

p a.class.superclass.superclass
p a.class.superclass
p a.class

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

p [2,3,4]
p [2,3,4].class

class Array
	def jabbadabbadoo
		collect {|x| "jabba_#{x}!" }
	end
end

p [2,3,4].jabbadabbadoo
a = ['a', 'b', 'c']
p a
a.send(:fill, "x")
p a
a.send("fill", "t")
p a

class E
	def initialize n
		@n = n
	end

	class EE
		def initialize n
			@n = n
		end
	end

	def t
		@ee = EE.new 56
	end
end

e = E.new 'a'
p e
ee = E::EE.new 'r'

p ee

r = e.t
p e
p r

class Rubyist
  def initialize
    @geek = "Matz"
  end
end
obj = Rubyist.new
# instance_eval can access obj's private methods
# and instance variables
obj.instance_eval {
  puts self # => #<Rubyist:0x2ef83d0>
  puts @geek # => Matz
}

