#
class E
	def initialize n
		@n = n
	end

	class EE
		def initialize n
			@n = n
		end
	end

	def make_inner
		@ee = EE.new 56 # last stm returned
	end
end

out = E.new 'a'
p out
inner_inst = E::EE.new 'r'
p inner_inst
puts ""

inner = out.make_inner
p out
p inner