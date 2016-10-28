
movies = {
	mulan: 10,
	lion_king: 10,
	fifth_element: 10,
	dont_breathe: 3
}

puts "Are we missing something?"
choice = gets.chomp

# Below your existing code, create a case statement for the choice variable with the following when conditions:

# when "add", please puts "Added!"
# when "update", please puts "Updated!"
# when "display", please puts "Movies!"
# when "delete", please puts "Deleted!"
# Otherwise (i.e. else), please puts "Error!"
# Don't forget the end statement after your case/when lines.

# Inside your when "add" block, remove the puts "Added!" statement.
# In its place, prompt the user for a movie title. Save the result in a new variable called title. 
	# (*Your code already has an example of how to do this!)
# Next, prompt the user for the rating of the movie. Save that in a new variable called rating.
# Add that movie/rating pair to the movies hash and puts a message indicating the pair was added. 
	# (No need for to_sym or to_i just yet!)

case choice
when "add"
	puts "What movie are we missing?"
	title = gets.chomp

	if movies[title.to_sym].nil?
		puts "What did you think of it?"
		rating = gets.chomp

		movies[title.to_sym] = rating.to_i
	else
		puts "You've already got this one"
	end
when "update"
	"What movie do you want to change?"
	title = gets.chomp
	if movies[title.to_sym].nil?
		puts "You need to add this one first"
	else
		puts "What do you think of it now?"
		rating = gets.chomp

		movies[title.to_sym] = rating.to_i
	end
when "display"
	movies.each do |title, rating|
		puts "#{title}: #{rating}"
	end
when "delete"
	puts "What do you want to remove?"
	title = gets.chomp

	if movies[title.to_sym].nil?
		"No need to delete, it's not even here bruh"
	else
		movies.delete(title)
	end
else
	puts "Error!"
end

