class UserController < ApplicationController

 


  def update
  	if request.xhr?
  		@user = User.find(current_user)
  		@user.update_attributes(params[:user])
  		@user
  	end
  end


end

