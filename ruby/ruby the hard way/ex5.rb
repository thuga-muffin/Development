my_name = 'thuga_muffin'
my_age = 25
my_height = 66 # inches
my_weight = 125 # lbs
my_eyes = 'Brown'
my_teeth = 'White'
my_hair = 'Brown'

puts "Let's talk about #{my_name}."
puts "She's #{my_height} inches tall."
puts "She's #{my_weight} pounds heavy."
puts "Actually that's not too heavy."
puts "She's got #{my_eyes} eyes and #{my_hair} hair."
puts "Her teeth are usually #{my_teeth} depending on the coffee."

puts "If I add #{my_age}, #{my_height}, and #{my_weight} I get #{my_age + my_height + my_weight}."

def kilo(x)	
	new = x * 1 / 2.2

	return "#{new.to_s}kg"
end

my_weight = kilo(my_weight)

puts "In kilograms I weigh #{my_weight}."