class ListsController < ApplicationController
    def index
      # find all lists
      @lists = List.all
      # byebug
      # Render all lists
      render json: ListSerializer.new(@lists)
    end
  
    def show 
      # Find one list
      @list = List.find(params[:id])
      # Render one list
      render json: ListSerializer.new(@list)
    end
  
    def create
      # create list
      @list = List.create(list_params)
      # If the list is valid
      if @list.valid?
        # Return that list
        render json: ListSerializer.new(@list)
      else
        # Give the user error messages
        render json: { errors: @list.errors.full_messages }, status: :not_acceptable
      end
    end
  
    def delete
      # Find one list
      @list = List.find(params[:id])
      # Delete that list
      @list.destroy
    end
  
    private
  
    def list_params
      params.permit(:name, :project_id)
    end
  end