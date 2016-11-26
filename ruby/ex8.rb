# creates the variable 'formater' that is a collecion of 4 variable looking things.

formatter = "%{first} %{second} %{third} %{fourth}"

# uses 'formatter' as some type of hash, prints the values
puts formatter % {first: 1, second: 2, third: 3, fourth: 4}
puts formatter % {first: "one", second: "two", third: "three", fourth: "four"}
puts formatter % {first: true, second: false, third: true, fourth: false}

# uses 'formatter' as a value with it's orignal contents as the value
puts formatter % {first: formatter, second: formatter, third: formatter, fourth: formatter}

# uses strings as a hash value
puts formatter % {
	first: "I had this thing.",
	second: "THat you could type right up.",
	third: "But it didn't sing.",
	fourth: "So I said goodnight."
}


# people usually use #{} to format strings
# but %{} is used to format multiple values