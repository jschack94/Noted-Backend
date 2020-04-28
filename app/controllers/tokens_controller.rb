class TokensController < ApplicationController

    def create
      # byebug
      # Find user based on the params sent over.
      user = User.find_by("lower(username) = ?", params[:username].downcase)
      # If the user was found, and they're authentically,
      if user && user.authenticate(params[:password])
        # Render the auth response from our application controller.
        render json: auth_response_json(user)
      else
        # Let the user know we couldn't find that account.
        render json: { errors: [ "Sorry!! Couldn't find that user." ] }
      end
    end
  
    def persist
      # If they're authenticated
      if authenticated?
        # Send back the auth response from our application controller.
        render json: auth_response_json(current_logged_in_user)
      else
        # They're unauthorized. Send the appropriate JSON message.
        notify_unauthorized_user
      end
    end
  
  
  end