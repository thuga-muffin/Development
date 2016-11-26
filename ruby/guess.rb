# save this as guess.rb
words = ['foobar', 'baz', 'quux']
secret = words[rand(3)]

print "guess? "
while guess = STDIN.gets
  guess.chop!
  if guess == secret
    print "You win!\n"
    break
  else
    print "Sorry, you lose.\n"
  end
  print "guess? "
end
print "The word was ", secret, ".\n"


minimum_value = [65,3,100,42,-7].inject(nil)	{ |x, num|
	x = num if x == nil || x > num
}