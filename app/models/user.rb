class User < ApplicationRecord
  has_secure_password
  has_many :projects
  has_many :lists, through: :projects
  has_many :tasks, through: :lists
  
  validates :username, :email, uniqueness: { case_sensitive: false }
end