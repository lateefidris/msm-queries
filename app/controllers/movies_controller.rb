class MoviesController < ApplicationController
  def index
    render({ :template => "movies_templates/list"})
  end

  def show
    get_id = params.fetch("the_id")
    @movie = Movie.where({ :id => get_id }).at(0)

    render({ :template => "movies_templates/description"})
  end
end
