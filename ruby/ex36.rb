
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

		if choice == "look" && !secret_passage
			puts "You don't really see anything"

		elsif choice == "fall"
			dead("""
				you manage to fall through the spikes
				but as you're sliding down you're foot
				gets caught between the spikes.

				You're ankle is broken.

				You starve to death.
			""")
		elsif choice == "climb"
			puts """
				As is tradition,
				the rocks come loose
				and you fall into the pit.
				Some how you surive

				What do you do now?
			"""
			secret_passage = true
		elsif choice == "look" && secret_passage
			puts "You see a secret passage"
			the_cave
		else
			puts "stick to the script"
		end

	end # while loop

end	# the_left
				

def the_cave
	puts "You found a cave."
	puts """
	It's unsettingly dark and silent.
	Silent except for a slow dripping noise in the distance.

	Slowly you feel your way through the cave.
	You move as quietly as possible. The silence 
	is unnerving, but also safe.

	While creeping through, you bump into what feels like a face.

	You hear a low laugh that is so menacing, you can feel whatever
	creature this was smiling in the darkness.

	In a wispy but rich whisper, it says:

	\"There's a toll.\"
	"""

	puts """
	Do you give him what's in your wallet?
	...try to trick him by giving him pieces of paper?
	...or offer him your soul?
	"""

	print "Response: "
	choice = $stdin.gets.chomp

	if choice.include? "wallet"
		puts "He bites into it, and spits it out."
		dead("He wasn't feeling it, he pounces on you and rips your trachea out.")
	elsif choice.include? "paper"
		puts "He's thirlled"
		puts "He lets you pass, you find the exit and survive."
		puts "Good job!"
		exit(0)
	elsif choice.include? "soul"
		dead("""
			He laughs and says he doesn't know what a soul is.
			Then he hits you in the head with a rock.

			Good job!
			""")
	else
		puts "Not a lot of option bruh..."
	end
			

end


# choosing the right
def the_right
	puts "walking to the right"
end

def dead(why)
	puts "It looks like things aren't really working out for you\n"
	puts why
	exit(0)
end

beginning	