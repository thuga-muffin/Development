#substrings


greeting = "Hello Everyone!"
puts greeting[0..4]
puts greeting[6..14]
puts greeting[6..-1]
puts greeting[6..-2]

# Ruby interprets negative positions to count back from the end of the string. 
# So in "Hi", the "i" is in position -1 and the "H" is in position -2.

# So if a letter has both a positive and negative position number, which should you use? 
# If you can use the positive numbers do it, they’re easier to reason about. 
# But, if you’re looking for something based on it being at the end of the string 
# (like "What’s the last character of this string?"), then use the negative positions.