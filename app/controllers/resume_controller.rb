class ResumeController < ApplicationController

	def edit
		@user = current_user
	end


	def show
		@user = current_user
	end
	
end
