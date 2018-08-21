fandango_api_key = "drfuq4g3zeza7rtn9mdnwfq8"
fandango_secret_key = "kdKg2PpRHT"
omdb_key = "e9f0bfbb"

movies = {
  "Aliens": 4,
  "Nocturnal Animals": 4,
  "Butterfly Effect": 2,
  "Straight Outta Compton": 3,
  }

puts "What's your name?"
name = gets.chomp

if name == "Dan"
  puts "Welcome to #{name}'s movie collection!"
  puts "-- Type 'add' to add a movie"
  puts "-- Type 'update' to update an existing entry"
  puts "-- Type 'display' to see your movie collection"
  puts "-- Type 'delete' to remove an entry"
  choice = gets.chomp

  case choice
  when "add"
    puts "What movie would you like to add?"
    title = gets.chomp
    if movies[title.to_sym].nil?
      title = title.to_sym
      puts "On a scale of 1-10 how would you rate #{title}?"
      rating = gets.chomp
      rating = rating.to_i
      movies[title] = rating
      puts "#{title} was added to your movies with a rating of #{rating}."
    else
      puts "#{title} already exists!"
    end
  when "update"
    puts "What movie would you like to update?"
    title = gets.chomp
    if movies[title.to_sym].nil?
      puts "That movie isn't in your collect!"
    else
      puts "The current rating is #{movies[title.to_sym]}. What would you like to update this to? (1-10)"
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
      puts "#{title} has been UPDATED to a rating of #{rating}."
    end
  when "display"
    movies.each do |title, rating|
      puts "#{title}: #{rating}"
    end
  when "delete"
    puts "What movie would you like to delete? (See list)"
    movies.each do |title, rating|
      puts "#{title}"
    end
    title = gets.chomp
    if movies[title.to_sym].nil?
      puts "That movie isn't in your collection!"
    else
      movies.delete(title.to_sym)
      puts "#{title} has been removed from your collection."
      end
  else
    "#{choice} is a an unknown command."
  end
else
  puts "Name not found"
end
