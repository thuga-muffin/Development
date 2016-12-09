
# the beginning
def beginning

	puts "You have the choice between right and left."

	print "Response: "
	choice = $stdin.gets.chomp

	choice.downcase!

	if choice == "left"
		the_left
	elsif choice == "right"
		the_right
	else
		puts "Only right or left"
	end

end	 # beginning

# choosing left
def the_left
	puts "You walk to the left"
	puts "While walking through a tuft of bushes and leaves..."
	puts "You fall into a tiger pit"
	puts "Do you look around..."
	puts "...try to fall through the spikes"
	puts "...or try to climb up by grabbing \nthe cracks in the pit"
	secret_passage = false

	while true

		print "Response: "
		choice = $stdin.gets.chomp
		choice.downcase!

		if choice.include? "look" && !secret_passage
			puts "You don't really see anything"
			
		elsif choice.include? "fall"
			dead("""
				you manage to fall through the spikes
				but as you're sliding down you're foot
				gets caught between the spikes.

				You're ankle is broken.

				You starve to death.
			""")
		elsif choice.include? "climb"
			puts """
				As is tradition,
				the rocks come loose
				and you fall into the pit.
				Some how you surive

				What do you do now?
			"""
			secret_passage = true
		elsif choice.include? "look" && secret_passage
			the_cave
		else
			puts "stick to the script"
		end

	end # while loop

end	# the_left
				

def the_cave
	puts "You found a cave."
end


# choosing the right
def the_right
	puts "walking to the right"
end

def dead(why)
	puts "It looks like things aren't really working out for you\n", why
	exit(0)
end

beginning	