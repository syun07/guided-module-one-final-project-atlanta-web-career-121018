class CommandLineInterface
  def greet
    puts "Welcome to MovieFinder!"

   # "
   #  _       __     __                             __           __  ___           _      _______           __          __
   # | |     / /__  / /________  ____ ___  ___     / /_____     /  |/  /___ _   __(_)__  / ____(_)___  ____/ /__  _____/ /
   # | | /| / / _ \/ / ___/ __ \/ __ `__ \/ _ \   / __/ __ \   / /|_/ / __ \ | / / / _ \/ /_  / / __ \/ __  / _ \/ ___/ /
   # | |/ |/ /  __/ / /__/ /_/ / / / / / /  __/  / /_/ /_/ /  / /  / / /_/ / |/ / /  __/ __/ / / / / / /_/ /  __/ /  /_/
   # |__/|__/\___/_/\___/\____/_/ /_/ /_/\___/   \__/\____/  /_/  /_/\____/|___/_/\___/_/   /_/_/ /_/\__,_/\___/_/  (_)
   #  ".colorize(:blue)

  end

  def gets_user_input
    puts "We can help you find which actors are in your favorite movies."
    puts "Enter a movie name to get started:"
    input = gets.chomp
  end

  def find_movie(input)
    Movie.find_by(name: input)
  end

  def find_actors(movie)
    movie.actors
  end

  def show_actors(actors)
    puts "Actors:"
    actors.each do |actor|
      puts "#{actor.name}"
    end
  end

  def run
    greet
    input = gets_user_input
    movie = find_movie(input)
    actors = find_actors(movie)
    show_actors(actors)
  end
end
