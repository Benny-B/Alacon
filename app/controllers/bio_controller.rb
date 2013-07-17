class BioController < ApplicationController


	def new

	end

	def create

	end

	def edit
		@user = User.find(current_user)
	end


	def show
		@users = User.all
	end


	def destroy

	end

end
