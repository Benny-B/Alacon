class UserController < ApplicationController

  def update
  	if request.xhr?
  		@user = User.find(current_user)
  		@user.update_attributes(params[:user])
    else
      @user = User.find(current_user)
      if @user.update_attributes(params[:user])
        redirect_to resume_show_path
      end
  	end

  end


end

