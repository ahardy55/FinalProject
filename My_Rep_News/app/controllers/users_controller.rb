class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	@user = User.new(params[:user])
    session[:user_id] = @user.id
  	if @user.save
      session[:user_id] = @user.id
  	  redirect_to "/represenative/index", :notice => "Signed Up!"
  	else
  	  render "new"
  	end
  end
end
