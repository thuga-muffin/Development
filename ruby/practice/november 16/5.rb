age = 26

# Add your code below!

26.respond_to?(:next)


#######################

# Concatenation Operator


alphabet = ["a", "b", "c"]
alphabet.push("d") # Update me!

caption = "A giraffe surrounded by "
caption += "weezards!" # Me, too!


alphabet = ["a", "b", "c"]
alphabet << "d"

caption = "A giraffe surrounded by "
caption << "weezards!"


##############################

# String Interpolation

favorite_things = ["Ruby", "espresso", "candy"]

puts "A few of my favorite things:"

favorite_things.each do |thing|
  puts "I love #{thing}!"
end


##################################

