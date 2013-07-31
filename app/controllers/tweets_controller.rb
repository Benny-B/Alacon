class TweetsController < ApplicationController

	def index 
     @allusers = User.all
     @alltweets = Tweet.paginate(page: params[:page])
	end


	def create
		@tweet = Tweet.new(params[:tweet])
  		@tweet.user = current_user

  	if request.xhr?
  		@tweet.save
  		@tweet
  		redirect_to "/"
  	else
  		redirect_to "/"
    end
  end

  def update
		@tweet = Project.find(params[:id])
    if request.xhr?
  		@tweet.update_attributes(params[:project])
  		redirect_to tweets_path
  	else
  		redirect_to "/"
  	end
  end
  	
	def destroy
	end

end
