people = 20
cats = 30
dogs = 15

if people < cats
  puts "Too many cats! The world is doomed"
end

puts "Too many cats! The world is doomed" if people < cats

if people > cats 
  puts "Not many cats! The world is saved!"
end

puts "Not many cats! The world is saved!" if people > cats

if people < dogs
  puts "The world is drooled on!"
end

puts "The world is drooled on!" if people < dogs

if people > dogs
  puts "The world is dry!"
end

puts "The world is dry!" if people > dogs

dogs += 5

if people <= dogs
  puts "People are less than or equal to dogs."
end

puts "People are less than or equal to dogs." if people <= dogs

if people == dogs
  puts "People are dogs."
end

puts "People are dogs." if people == dogs