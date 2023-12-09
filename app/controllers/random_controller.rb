class RandomController < ApplicationController
  def show_random_form
    render({ :template => "page_templates/random" })
  end

  def random_these
    @min = params.fetch("user_min").to_i
    @max = params.fetch("user_max").to_i
    
    @result = rand(@min..@max)

    render({ :template => "page_templates/random_results" })
  end
end
