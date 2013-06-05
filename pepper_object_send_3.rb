#pepper_send

# Object is called a reciever
# send ,essages to object
class P
  attr_accessor :name

  def initialize n
  	@name = n
  end

  def greeting
    "Hello #{@name}"
  end

  def setter m
  	self.send("name=", m)
  end
end

puts 4+5
puts 4.+ 5
puts 4.send :+,5
puts ""

#p = P.new 'thomas'
#puts p.name
#p.name= 'more'
#puts p.name
#p.name = '007'
#puts p.name
#p.send :name=, "008"
#puts p.name
#puts ""
#puts p.greeting
#p.setter 'paf'
#puts p.greeting


puts ""

a = [3,4,5]
puts a
puts a.class
a.send(:fill, "x")
p a
a.send("fill", "t")
a = [3,4,5]
p a[0], a[-1]
a[6] = 55
p a

