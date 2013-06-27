class RepcommentsController < ApplicationController

	def create
		@c = Repcomment.create params[:repcomment]
		redirect_to represenative_index_path
	end
end
