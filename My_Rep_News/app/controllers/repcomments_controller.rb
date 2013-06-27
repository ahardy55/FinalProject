class RepcommentsController < ApplicationController
    #used to set comments about represenatives
	def create
		@c = Repcomment.create params[:repcomment]
		redirect_to represenative_index_path
	end
end
