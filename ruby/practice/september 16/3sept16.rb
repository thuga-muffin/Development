



# Iterate over the matz hash and print each value to the console using puts.

matz = { "First name" => "Yukihiro",
  "Last name" => "Matsumoto",
  "Age" => 47,
  "Nationality" => "Japanese",
  "Nickname" => "Matz"
}

matz.each {
	|key, value|

	puts value
}

# We can certainly use strings as Ruby hash keys; as we've seen, 
# there's always more than one way to do something in Ruby. 
# However, the Rubyist's approach would be to use symbols.

menagerie = { :foxes => 2,
  :giraffe => 1,
  :weezards => 17,
  :elves => 1,
  :canaries => 4,
  :ham => 1
}

menagerie.each do |key, value|
  puts key.object_id
end


puts "string".object_id
puts "string".object_id

puts :symbol.object_id
puts :symbol.object_id

strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

# Create a new variable, symbols, and store an empty array in it.
# Use .each to iterate over the strings array.
# For each s in strings, use .to_sym to convert s to a symbol and use .push to add that new symbol to symbols.

symbols = []

strings.each do |s|
  symbols.push(s.to_sym)
end

# .to_sym = .intern

symbols.each { |x|
  puts x.object_id
}

# ruby 1.9 supports notation where the colon comes after
# the symbol, but the key is still a symbol  


movies = {
  terminator: "eh",
  mulan: "loved it",
  lionking: "changed my life",
  aladdin: "hilarious"

}

require 'benchmark'

string_AZ = Hash[("a".."z").to_a.zip((1..26).to_a)]
symbol_AZ = Hash[(:a..:z).to_a.zip((1..26).to_a)]

string_time = Benchmark.realtime do
  100_000.times { string_AZ["r"] }
end

symbol_time = Benchmark.realtime do
  100_000.times { symbol_AZ[:r] }
end

puts "String time: #{string_time} seconds."
puts "Symbol time: #{symbol_time} seconds."
