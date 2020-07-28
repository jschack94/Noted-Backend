class ApplicationController < ActionController::API

  # Pass a user's ID
  def authorized?(user_id)
    # Token
    token = try_get_jwt_token
    # return true if token is present and token's user_id is the user's actual id
    return token.present? && token["user_id"] == user_id.to_i
  end

  def current_logged_in_user
    # if the user is authenticated
    if authenticated?
      # assign the user's id based on the id from our token
      user_id = try_get_jwt_token["user_id"]
      # then find that user in our database
      User.find(user_id)
    end
  end

  def authenticated?
    # If there's a jwt token, return true
    try_get_jwt_token.present?
  end

  # This takes a user
  def auth_response_json(user)
    # return json with a new token, and the user's information
    { token: make_token(user.id), username: user.username, user_id: user.id }
  end

  # If the user is unauthorized, we want to send them the corresponding JSON
  def notify_unauthorized_user
    render :json => { unauthorized: true }, :status => :unauthorized
  end

  private

  # CREATE a token given the User ID
  def make_token(user_id)
    # Encode with the user id, secret JWT key, and the HMAC SHA-256 hash algorithm
    JWT.encode({ user_id: user_id }, ENV["JWT_SECRET_KEY"], 'HS256')
  end

  # DECODE TOKEN INSTANCE METHOD takes a token string
  def decode_token(token_string)
    # Use JWT to decode the token string with our secret JWT key
    JWT.decode(token_string, ENV["JWT_SECRET_KEY"], true, { algorithm: 'HS256' })
  end

  # GET TOKEN INSTANCE METHOD
  def try_get_jwt_token
    # Look at our "Authorization" header and grab the token string
    token_string = request.headers["Authorization"]
    # If there's a token present
    if token_string.present?
      begin
        # Decode the token
        decoded_token = decode_token(token_string)
        # error handling
      rescue JWT::VerificationError
        return nil
      end
      return decoded_token.first # gets the payload out of the array that JWT returns
    else
      nil
    end
  end

end