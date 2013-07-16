class UserController < ApplicationController

  def update
  	render "public/404.html"
  	if request.xhr?
  		@user = User.find(current_user)
  		if @user.update_attributes(params[:user])
  			
  		else

  		end
  		
  	else
  		
  	end
  end


end

