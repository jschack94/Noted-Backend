  class UserSerializer
    include FastJsonapi::ObjectSerializer
    attributes :name, :username, :email
 
  end