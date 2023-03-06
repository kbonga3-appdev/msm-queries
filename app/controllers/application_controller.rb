class ApplicationController < ActionController::Base
  def homepage
    render({ :template => "misc_templates/home"})

  end

def directorss

@list_of_directors = Director.all

  render({ :template => "misc_templates/directors.html.erb"})
end

def eldest_age

  @eldest = Director.where.not({ :dob => nil }).order({ :dob => :asc }).at(0)

  
  render({ :template => "misc_templates/eldest.html.erb"})
end

def youngest_age
  @youngest = Director.where.not({ :dob => nil }).order({ :dob => :DESC }).at(0)

  
  render({ :template => "misc_templates/youngest.html.erb"})
end



def about_movie

  # mov_id = params.fetch("movie_id")
  # @mov_id = Movie.where({ :id => mov_id}).at(0)

                 #  {"movie_id"=>"Jurassic Prank1"}
                             
   movies_id = params.fetch("movie_id")
   @movie_id = Movie.where({ :id => movies_id}).at(0)
   @list_of_directors = Director.all

                  # @filmographys = Movie.where({ :id => movies_id})
   render({ :template => "misc_templates/movie_info.html.erb"})

end 


def about_director

  # {"id_about"=>"7"}
  directors_id = params.fetch("id_about")

  @director_id = Director.where({ :id => directors_id}).at(0)
   @filmography = Movie.where({ :director_id => @director_id.id})
  # @filmography = Movie.where({ :director_id => directors_id})
  render({ :template => "misc_templates/about_director.html.erb"})

end


def show_movies
  
  @list_of_movies = Movie.all
  @list_of_directors = Director.all

  render({ :template => "misc_templates/movies.html.erb"})
end


def show_actors
 
  @list_of_actor = Actor.all

  render({ :template => "misc_templates/actors.html.erb"})

end


def about_actors

  actors_id = params.fetch("id_actors")
  @actor_id = Actor.where({ :id => actors_id}).at(0)


  @list_of_characters = Character.all
  @list_of_movies = Movie.where({ :id => actors_id}).at(0)
  @list_of_directors = Director.all
  
  # @director_id = Director.where({ :id => actors_id}).at(0)
  #  @filmography = Movie.where({ :director_id => @director_id.id})
  # @filmography = Movie.where({ :director_id => directors_id})
  render({ :template => "misc_templates/about_actor.html.erb"})

    
end

end
