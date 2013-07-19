class StaticpagesController < ApplicationController

  def home
  	if user_signed_in?
    	@user = User.find(current_user)
    	@allusers = User.all
      @alltweets = Tweet.all
    	@tweet = Tweet.new
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
