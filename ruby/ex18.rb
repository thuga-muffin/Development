
# the * tells ruby to take all of the arguments and put them 
# in args as a list
def print_two(*args)
	# unpacks args, like with ARGV
	arg1, arg2 = args
	puts "arg1: #{arg1}, arg2: #{arg2}"
end

def print_two_again(arg1, arg2)
	puts "arg1: #{arg1}, arg2: #{arg2}"
end

def print_one(arg1)
	puts "arg1: #{arg1}"
end

def print_none()
	puts "I got nothin'."
end

print_two("thuga", "muffin")
print_two_again("thuga", "muffin")
print_one("Wub-wub")
print_none()