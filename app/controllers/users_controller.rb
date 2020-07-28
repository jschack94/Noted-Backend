class UsersController < ApplicationController
  attr_accessor :passsword

  def index 
    # find all users
    @users = User.all
    # Render those users
    render json: UserSerializer.new(@users)
  end

  def show
    user_id = params[:id]
    if authorized?(user_id) # see application_controller.rb
      user = User.find(user_id)
      render json: UserSerializer.new(user)
    else
      notify_unauthorized_user # see application_controller.rb
    end
  end
  
  def create 
    get_user_params
    # create a new user
    @user = User.create(@user_params)
    # if it persists
    if @user.valid?
      # byebug
      # render that user
      render json: auth_response_json(@user), status: :created
    else
      # Or let the user know why it didn't save.
      render json: { errors: @user.errors.full_messages }, status: :not_acceptable
    end
  end
  
  # Take the plain text password
  def authenticate(plaintext_passwprd)
    # Encript the password
    if BCrypt::Password.new(self.password_digest) == plaintext_passwprd
      # Return the encrypted password
      self 
    else
      # OR return false
      false
    end
  end

  private
  # Get the user information from the params we get from the client side.
  def get_user_params
    params.permit(:name, :username, :email, :password)
    @user_params = { name: params[:name], username: params[:username], email: params[:email], password: params[:password]}
  end
  # def user_params
  #  params.require(:user).permit(:name, :username, :email, :password)
  # end
end