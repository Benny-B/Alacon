class ProjectsController < ApplicationController
  

  def new
  	@project = Project.new
  end

  def create 
  	@project = Project.new(params[:project])
  	@project.user = current_user

  	if request.xhr?
  		@project.save
  		redirect_to projects_path
  	else
  		@project.save
  		redirect_to projects_path
  	end

  end

  def edit
  	@project = Project.find(params[:id])
  end

  def show
  	@project = Project.find(params[:id])
  end

  def index
  	@projects = Project.all
  end

  def update
  	@project = Project.find(params[:id])
  	
  	if @project.update_attributes(params[:project])
  		redirect_to project_path
  	else
  		redirect_to "/"
  	end
 

  end

  

  def destroy
  	@project = Project.find(params[:id])
  	@project.destroy
  	redirect_to projects_path
  end
end
