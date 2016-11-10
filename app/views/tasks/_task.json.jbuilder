json.extract! task, :id, :title, :user_id, :time
json.active task.active?
json.url task_url(task, format: :json)
