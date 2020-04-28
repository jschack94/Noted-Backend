class List < ApplicationRecord
    belongs_to :project
    has_many :tasks
    has_one :user, through: :project
  end