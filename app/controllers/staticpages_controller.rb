class StaticpagesController < ApplicationController
  def home
  	@user = User.find(current_user)
  end

  def about
  	render "public/404.html"
  end

  def contact
  end

  def update
  	
  end
end
