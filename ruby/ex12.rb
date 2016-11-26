
# prompts user
print "Give me a number: "
number = gets.chomp.to_i

bigger = number * 100
puts "A bigger number is #{bigger}"

print "Give me another number: "
another = gets.chomp
number = another.to_i

smaller = number / 100
puts "A smaller number is #{smaller}."

print "Give me something."
something = gets.chomp.to_f	

somthing_else = something * 58
puts somthing_else

print "Your purchase somes to $103.40."
purchase = 103.40

puts "You have a coupon that let's you get 10\% back."
coupon = 0.1

change = purchase * coupon
change = change.to_s[0..4]
change = change.to_f
puts "You change comes to $#{change}."
