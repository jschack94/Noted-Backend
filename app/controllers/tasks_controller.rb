class TasksController < ApplicationController
    def index 
      # find all tasks
      @tasks = Task.all
      # Render all tasks
      render json: TaskSerializer.new(@tasks)
    end
  
    def show 
      # Find one task
      @task = Task.find(params[:id])
      # Render one task
      render json: TaskSerializer.new(@task)
    end
  
    def create
      # create task
      @task = Task.create(task_params)
      # If the task is valid
      if @task.valid?
        # Return that task
        render json: TaskSerializer.new(@task)
      else
        # Give the user error messages
        render json: { errors: @task.errors.full_messages }, status: :not_acceptable
      end
    end
  
    def destroy
      # Find one task
      @task = Task.find(params[:id])
      # Delete that task
      @task.destroy
    end
  
    private
  
    def task_params
      params.permit(:content, :list_id)
    end
  end