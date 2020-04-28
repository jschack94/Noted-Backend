class User < ApplicationRecord
  has_many :projects
  has_many :lists, through: :projects
  has_many :tasks, through: :lists
  has_secure_password
  validates :username, :email, uniqueness: { case_sensitive: false }
end