Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })

  get("/directors", { :controller => "application", :action => "directorss" })

  get("/directors/eldest", { :controller => "application", :action => "eldest_age" })

  get("/directors/youngest", { :controller => "application", :action => "youngest_age" })

  get("/directors/:id_about", { :controller => "application", :action => "about_director" })


  get("/movies", { :controller => "application", :action => "show_movies" })

  get("/movies/:movie_id", { :controller => "application", :action => "about_movie" })

  get("/actors", { :controller => "application", :action => "show_actors" })

  get("/actors/:id_actors", { :controller => "application", :action => "about_actors" })

  

end
