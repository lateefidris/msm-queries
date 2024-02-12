class DirectorsController < ApplicationController
  def index
    render({ :template => "director_templates/list"})
  end

  def show
    get_id = params.fetch("the_id")
    @director = Director.where({ :id => get_id }).at(0)

    @movies = Movie.where({ :director_id => get_id})
    render({ :template => "director_templates/bio"})
  end
end
