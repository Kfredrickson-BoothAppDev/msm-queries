class MoviesController < ApplicationController

  def index
    @list_of_movies = Movie.all
    render({ :template => "movie_template/index.html.erb"})
  end

  def film_details
    the_id = params.fetch("an_id")
    @the_film = Movie.where({ :id => the_id }).at(0)
    @filmography = Movie.where({ :movie_id => @the_film.id })
    render({ :template => "movie_template/show.html.erb"})
  

end
end
