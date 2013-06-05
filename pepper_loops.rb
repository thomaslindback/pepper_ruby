
a = [1,2,3,4,5]

for i in a
	print "#{i}"
end
print "\n"

a.each {|i| print "#{i} " }
print "\n"

a.each_with_index {|i,j| print ":#{i} #{j}" }
print "\n"

(1..5).each {|i| print "#{i} "}
print "\n"

for i in (1..5) 
	print "#{i} "
end
print "\n"

(1...5).each {|i| print "#{i} "}
print "\n"

5.times {|i| print "#{i} "}
print "\n"

1.upto(5) {|i| print "#{i} "}
print "\n"

1.step(10, 2) { |i| print "#{i} "}
print "\n"

(4...9).each_with_index { |i,j| print "->#{i}:#{j}"}
print "\n"
