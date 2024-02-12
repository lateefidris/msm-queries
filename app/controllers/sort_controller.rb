class SortController < ApplicationController
  def youngest
    @x = Director.order({:dob => :desc}).at(0)

    render({ :template => "sort_templates/youngest"})
  end

  def eldest
    @sorted_director = Director.order({:dob => :desc}).where.not(dob: nil)
    @director_old = @sorted_director.last

    @director_bday= @director_old.dob.strftime("%B %w, %Y")

    render({ :template => "sort_templates/eldest"})
  end
end
