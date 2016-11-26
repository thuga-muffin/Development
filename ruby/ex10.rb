puts "I am 6'2\" tall." # escape double quote inside string
puts 'I am 6\'2" tall.' # escape single quote inside string


# \t makes an indent \n creates a linebreak
tabby_cat = "\tI'm tabbed in."
persian_cat = "I'm split\non a line."
# \\ makes it so '\' prints so this equals:
# I'm \ a \ cat.
backslash_cat = "I'm \\ a \\ cat."

fat_cat = """
I'll do a list:
\t* Cat food
\t* Fishies
\t* Catnip\n\t* Grass
"""

puts tabby_cat
puts persian_cat
puts backslash_cat
puts fat_cat

bel_wut = "This is something\a new"
bs = "What does\b this do?"
formfeed = "What is a\f do?"
carriage = "This is a carriage\r return"
vertical = "This is a \vtab"

puts bel_wut
puts bs
puts formfeed
puts carriage
puts vertical