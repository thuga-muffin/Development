
print "What's your name? "

myName = "Jon Sue"

print "Why did you come here? "

reasons = "To see what it do"

puts reasons

reasons.gsub!(/s/, "k")

puts myName
puts reasons

################################## ################################## #################################


5.times	{
	print "Odelay "
}

['apples', 'oranges', 'lemons'].each {
	|food|
	puts food.capitalize
}

2.times do 
	puts "I see you"
end

################################## ################################## #################################

for i in 1..5
	next if i % 2 == 0
	print "#{i} \n"
end

puts "\n"

array = [1,2,6,8,5]

array.each do |x|
	x += 10
	next if x % 3 == 0
	puts x

end

puts "\n"

multiArray = [[1,2,3,4], [12,13,14,15], [24,25,36,76],[32,45,65,28]]

multiArray.each	{
	|x| puts "#{x} \n"
}

puts "\n"

puts multiArray[1][0]

puts "\n"

saga = { "name" => "Eric",
  "age" => 26,
  "hungry?" => true
}

puts saga["name"]
puts saga["age"]
puts saga["hungry?"]

puts "\n"

# h = Hash.new { |hash, key| hash[key] =  }

pets = Hash.new
pets["cat"] = "Killua"

puts pets["cat"]

puts "\n"

friends = ["Milhouse", "Ralph", "Nelson", "Otto"]

family = { "Homer" => "dad",
  "Marge" => "mom",
  "Lisa" => "sister",
  "Maggie" => "sister",
  "Abe" => "grandpa",
  "Santa's Little Helper" => "dog"
}

friends.each { |x| puts "#{x}" }
family.each { |x, y| puts "#{x}: #{y}" }

puts "\n"

s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]

s.each do |meat, cheese|
	puts "#{meat} and #{cheese}"
end

s.each do |parts|
    parts.each do |x|
        print x
	end
end
    
# s.each do |cheeses|
#     cheeses.each do |y|
#         puts y
#     end
# end

puts "\n"

dcHero = {
	"Wonder Woman" => "Diana Prince",
	"Batman" => "Bruce Wayne",
	"Catwoman" => "Selena Kyle"
}

puts "\n"

dcHero.each do |hero, real|
	puts "#{hero}: #{real}"
end

puts "\n"

places = Hash.new 

places["Michigan"] = "Detroit"
places["Georgia"] = "Atlanta"
places["New York"] = "New York"

puts places["Michigan"]

puts "\n"

text = "All the war-propaganda, all the screaming and lies and hatred, comes invariably from people who are not fighting." #Orwell

words = text.split(" ")
frequencies = Hash.new(0)
words.each { |word| frequencies[word] += 1 }
frequencies = frequencies.sort_by {|a, b| b }
frequencies.reverse!
frequencies.each { |word, frequency| puts word + " " + frequency.to_s }


h = Hash.new("nothing here")

puts h
# {}
puts h["kitty"]
# nothing here


################################## 31 aug 2016 ################################## #################################

puts "Text to search through: "
text = "Think of life as it really is, think of the details of life; and then think that there is no meaning in it, no purpose, no goal except the grave. Surely only fools or self-deceivers, or those whose lives are exceptionally fortunate, can face that thought without flinching?"
puts "Word to redact: "
redact = "life"

words = text.split(" ")

words.each do |word|
  if word != redact
    print word + " "
  else
    print "REDACTED "
  end
end

text = "Think of life as it really is, think of the details of life; and then think that there is no meaning in it, no purpose, no goal except the grave. Surely only fools or self-deceivers, or those whose lives are exceptionally fortunate, can face that thought without flinching?"
puts text
redact = "life"
puts redact 

words = text.split
text.split(" ")

words.each do |x|
    if x == redact
        print "REDACTED " 
    else
        print x + (" ")
    end
end


############## hashes cont. #################


colors = {"red" => 2, "blue" => 3}
colors["blue"] += 1
puts colors["blue"]

puts "Gimme something"
text = "You have desires and so satisfy them, for you have the same rights as the most rich and powerful. Don't be afraid of satisfying them and even multiply your desires.' That is the modern doctrine of the world. In that the see freedom. And what follows from this right of multiplication of desire? In the rich, isolation and spiritual suicide; in the poor, envy and murder; for the have been given rights, but have not been shown the means of satisfying their wants. They maintain that the world is getting more and more united, more and more bound together in brotherly community, as it overcomes distance and sets thoughts flying through the air."

words = text.split

frequencies = Hash.new(0)
words.each { |word| frequencies[word] += 1 }

colors = {"blue" => 3, "green" => 1, "red" => 2}
colors = colors.sort_by do |color, count|
  count
end
colors.reverse!

puts colors

puts frequencies


























