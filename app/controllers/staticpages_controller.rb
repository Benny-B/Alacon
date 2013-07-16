class StaticpagesController < ApplicationController
  def home
  	if user_signed_in?
  	@user = User.find(current_user)
  	@allusers = User.all
  	#@users = @allusers.delete_at
  	end
  end

  def about
  	render "public/404.html"
  end

  def contact
  end

  def update

  end
end
