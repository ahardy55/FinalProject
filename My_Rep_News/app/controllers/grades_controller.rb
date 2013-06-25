class GradesController < ApplicationController
  def create
  	g = Grade.create params[:grade]
  	redirect_to represenative_index_path
  end

  def update
  end
end
