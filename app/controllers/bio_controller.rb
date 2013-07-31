class BioController < ApplicationController


	def new

	end

	def create

	end

	def edit
		@user = User.find(current_user)
	end


	def show
	end

	


	def destroy

	end

end
