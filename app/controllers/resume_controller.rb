class ResumeController < ApplicationController

	def edit
		@user = User.find(current_user)
	end


	def show
		@user = User.find(current_user)
	end
	
end
