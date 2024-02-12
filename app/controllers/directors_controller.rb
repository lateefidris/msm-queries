class DirectorsController < ApplicationController
  def index
    render({ :template => "director_templates/list"})
  end

  def bio
    @x = Director.where({ :id => params.fetch("director") }).at(0)
    render({ :template => "director_templates/bio"})
  end
end
