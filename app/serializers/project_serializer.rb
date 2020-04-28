class ProjectSerializer
    include FastJsonapi::ObjectSerializer
    attributes :name, :user_id
    # has_many :lists
    # has_many :tasks, through: :lists
  
    attribute :user do |project|
      project.user.name
    end
  
    attribute :lists do |project|
      list_array = []
      # byebug
      project.lists.each do |list|
        list_obj = { 'id' => list.id,  'name' => list.name, 'tasks' => list.tasks }
        list_array << list_obj
      end
      list_array
    end
  
  
  end