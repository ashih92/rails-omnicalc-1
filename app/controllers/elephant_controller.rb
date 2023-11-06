class ElephantController < ApplicationController
  def rice
    @random_move=["rock","paper","scissors"].sample  
    
    if @random_move == "rock"
      @outcome = "tied"
    elsif @random_move == "scissors"
      @outcome = "won"
    else
      @outcome = "lost"
    end
    render({:template=>"game_templates/play_rock"})
  end

  def noodle
    @random_move=["rock","paper","scissors"].sample 
    
    if @random_move == "rock"
      @outcome = "lost"
    elsif @random_move == "scissors"
      @outcome = "tied"
    else
      @outcome = "won"
    end
    render({:template=>"game_templates/play_scissors"}) 
  end

  def tacos
    @random_move=["rock","paper","scissors"].sample  
    
    if @random_move == "rock"
      @outcome = "won"
    elsif @random_move == "scissors"
      @outcome = "lost"
    else
      @outcome = "tied"
    end
    render({:template=>"game_templates/play_paper"})
  end

  def tofu
    render({:template=>"game_templates/homepage"})
  end 
end
