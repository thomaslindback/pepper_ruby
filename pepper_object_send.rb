#pepper_send

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

p = P.new 'thomas'
puts p.greeting
p.setter 'paf'
puts p.greeting
puts p.name
p.name= 'more'
puts p.name


