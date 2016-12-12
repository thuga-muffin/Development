# first, second, third = ARGV

# puts "Your first variable is: #{first}"
# puts "Your second variable is: #{second}"
# puts "Your third variable is: #{third}"

# alpha, beta, charlie, gamma = ARGV

# puts "Mission 1 is #{alpha}"
# puts "Mission 2 is #{beta}"
# puts "Mission 3 is #{charlie}"
# puts "Mission 4 is #{gamma}"

# un, deaux = ARGV

# puts "Your first move is: #{un}"
# puts "Your second move is #{deaux}"


thing_one, thing_two, thing_three = ARGV

# I don't know what $stdin means but ARGV doesn't
# work with gets.chomp alone
one = $stdin.gets.chomp
two = $stdin.gets.chomp
three = $stdin.gets.chomp


puts "This is the first #{one}"
puts "This is the second #{two}"
puts "This is the third #{three}"

puts "This is the other one #{thing_one}, #{thing_two}, #{thing_three}"