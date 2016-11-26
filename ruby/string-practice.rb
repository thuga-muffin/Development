print "a\nb\nc","\n"

print 'a\nb\n',"\n"
print "\n"
print "\001"
print '\001'
print "abcd #{5*3} efg"

var = " abc "
print "1234#{var}5678"


print "foo" + "bar" 
print "foo" * 2

print "happy" + " \001"

print "a\nb\nc"
print "a\nb\nc"
print "a\nc\nc","\n"
print "a\nb\nc"

word = "fo" +"o"
puts word
puts word[0]
puts word[1]
puts word[2]
puts word[3]
puts word[-1]
puts word[-2]
puts word[-3]
puts word[-15]



def capital(string)
	puts "#{string[0].upcase!}#{string[1..-1]}"
end

name = "bonita"
capital(name)
puts name

