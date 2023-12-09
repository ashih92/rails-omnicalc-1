class SquareRootController < ApplicationController
  def show_square_root_form
    render({ :template => "page_templates/square_root" })
  end

  def square_root_these
    @first_number = params.fetch("form_first_number").to_f
    
    @result = Math.sqrt(@first_number)

    render({ :template => "page_templates/square_root_results" })
  end
end
