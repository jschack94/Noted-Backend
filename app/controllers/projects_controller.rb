class ProjectsController < ApplicationController
    def index 
      # find all projects
      @projects = Project.all
      # byebug
      # Render all projects
      render json: ProjectSerializer.new(@projects)
    end
  
    def show 
      # Find one project
      @project = Project.find(params[:id])
      # Render one project
      render json: ProjectSerializer.new(@project)
    end
  
    def create
      # create project
      @project = Project.create(project_params)
      # If the project is valid
      if @project.valid?
        # Return that project
        render json: ProjectSerializer.new(@project)
      else
        # Give the user error messages
        render json: { errors: @project.errors.full_messages }, status: :not_acceptable
      end
    end
  
    def delete
      # Find one project
      @project = Project.find(params[:id])
      # Delete that project
      @project.destroy
    end
  
    private
  
    def project_params
      params.permit(:name, :user_id)
    end
  end