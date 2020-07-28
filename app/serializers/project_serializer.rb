class ProjectSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :user_id
  # has_many :lists
  # has_many :tasks, through: :lists


end