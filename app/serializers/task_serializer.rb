class TaskSerializer
    include FastJsonapi::ObjectSerializer
    attributes :content, :list_id
  end