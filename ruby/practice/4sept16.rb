



movie_ratings = {
  memento: 3,
  primer: 3.5,
  the_matrix: 5,
  truman_show: 4,
  red_dawn: 1.5,
  skyfall: 4,
  alex_cross: 2,
  uhf: 1,
  lion_king: 3.5
}
# Add your code below!

# Create a new variable, good_movies, and 
# set it equal to the result of calling 
# .select on movie_ratings, selecting only 
# movies with a rating strictly greater than 3.

good_movies = movie_ratings.select { |movie, rating| rating > 3}

def ratingSort( movies, rev=false)
	if rev == true
		movies.sort_by do |movie, rating|
			rating
		end

		puts "Least Popular: #{movie.to_s} #{rating.to_s}"

	else
		movies.sort_by do |movie, rating|
			rating
		end

		puts "Most Popular: #{movie} #{rating}."

	end

end

# ratingSort(good_movies)
# ratingSort(good_movies, true)

# puts "Most Popular: #{ratingSort(good_movies)}"
# puts "Least Popular #{ratingSort(good_movies, true)}"

  def dr_chams_timeline( year )
  case year
  when 1894
    "Born."
  when 1895..1913
    "Childhood in Lousville, Winston Co., Mississippi."
  when 1914..1919
    "Worked at a pecan nursery; punched a Quaker."
  when 1920..1928
    "Sailed in the Brotherhood of River Wisdomming, which journeyed \
     the Mississippi River and engaged in thoughtful self-improvement, \
     where he finished 140 credit hours from their Oarniversity."
  when 1929
    "Returned to Louisville to pen a novel about time-travelling pheasant hunters."
  when 1930..1933
    "Took up a respectable career insuring pecan nurseries.  Financially stable, he \
     spent time in Brazil and New Mexico, buying up rare paper-shell pecan trees.  Just \
     as his notariety came to a crescendo: gosh, he tried to buried himself alive."
  when 1934
    "Went back to writing his novel.  Changed the hunters to insurance tycoons and the \
     pheasants to Quakers."
  when 1935..1940
    "Took Arthur Cone, the Headmaster of the Brotherhood of River Wisdomming, as a \
     houseguest.  Together for five years, engineering and inventing."
  when 1941
    "And this is where things got interesting."
  end
end

puts dr_chams_timeline( 1941 )