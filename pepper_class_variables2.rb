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
aSong.duration
aSong.duration = 257   # set attribute with updated value
aSong.duration 
