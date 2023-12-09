class SquareController < ApplicationController
  def show_square_form
    render({ :template => "page_templates/square" })
  end

  def square_these
    @first_number = params.fetch("form_first_number").to_f
    
    @result = @first_number * @first_number

    render({ :template => "page_templates/square_results" })
  end
end
