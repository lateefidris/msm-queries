class ActorsController < ApplicationController
  def index
    render({ :template => "actor_templates/list"})
  end

  def show
    get_id = params.fetch("the_id")
    @actor = Actor.where({ :id => get_id }).at(0)

    @characters = Character.where({ :actor_id => get_id})

    render({ :template => "actor_templates/description"})
  end
end
