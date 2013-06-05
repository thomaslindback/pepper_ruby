class Song
	attr_reader :name, :artist, :duration
 	def initialize(name, artist, duration)
    	@name     = name
    	@artist   = artist
    	@duration = duration
  	end

  	def duration=(newDuration)
    	@duration = newDuration
  	end
end
aSong = Song.new("Bicylops", "Fleck", 260)
p aSong.duration
p aSong.duration = 257   # set attribute with updated value
p aSong.duration 

p aSong.inspect


class Q
	puts '-> Q'
end

q1 = Q.new
q2 = Q.new
p q1
p q2

class Q
	def met1
		puts "#{self} , met1"
	end
end

def q1.met2
	puts "#{self} , met2"
end

q1.met1
q2.met1

q1.met2
#q2.met2


class RR
	attr_reader @name

	def initualize name
		@name = name
	end
end

rr = R.new 'rob'
p rr 