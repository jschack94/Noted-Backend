class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :username, :email, :password

  attribute :projects do |user|
    projects_array = []
    user.projects.each do |project|
      project_obj = { 'id' => project.id, 'name' => project.name, 'lists' => []}

        project.lists.each do |list|
          list_obj = { 'id' => list.id,  'name' => list.name, 'tasks' => list.tasks }
          project_obj['lists'] << list_obj
        end
        projects_array << project_obj
    end
    projects_array
  end
end