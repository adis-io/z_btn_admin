json.extract! task, :id, :title, :user_id, :time, :active
json.url task_url(task, format: :json)
