json.extract! task, :id, :name, :start_date, :due_date, :priority, :comment, :progress, :created_at, :updated_at
json.url task_url(task, format: :json)
