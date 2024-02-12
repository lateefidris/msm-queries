Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get("/directors", {:controller => "directors", :action => "index"})

  get("/directors/:director", {:controller => "directors", :action => "bio"})

  get("/actors", {:controller => "actors", :action => "index"})

  get("/movies", {:controller => "movies", :action => "index"})

  get("/characters", {:controller => "characters", :action => "index"})


end
