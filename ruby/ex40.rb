class Song
	
	def initialize(lyrics)
		@lyrics = lyrics
	end

	def sing_me_a_song()
		@lyrics.each { |line| puts line }
	end
end

happy_bday = Song.new(["All I want for my birthday",
					"is a big booty ho",
					"When I die bury me inside the Gucci store"])

hows_it_going_down = Song.new(["What type of games is being played,",
						"how's it going down?",
						"It's on til it's gone,",
						"then I gots to know now"])

happy_bday.sing_me_a_song()

hows_it_going_down.sing_me_a_song()