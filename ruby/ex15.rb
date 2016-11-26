# creats a variable called filename that is used as an 
# arguement on script start -> ex15_sample.txt
filename = ARGV.first

# sets txt to the contents of the text file?
txt = open(filename)

puts "Here's you file #{filename}:"
print txt.read # prints contents of read txt file??

print "Type the filename again: "
# prompts user for file name through script
file_again = $stdin.gets.chomp

# sets contents as variable txt_again
txt_again = open(file_again)

# prints contents
print txt_again.read