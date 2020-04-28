class ListSerializer
    include FastJsonapi::ObjectSerializer
    attributes :name, :project_id
    attribute :tasks do |list|
      list.tasks
    end
  end