class UserController < ApplicationController

 


  def update
  	if request.xhr?
  		@user = User.find(current_user)
  		if @user.update_attributes(params[:user])
  		end
  		@user
  	else
  		
  	end
  end


end

