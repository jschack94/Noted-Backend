class Task < ApplicationRecord
    belongs_to :list
    has_one :project, through: :list
    has_one :user, through: :project
  end