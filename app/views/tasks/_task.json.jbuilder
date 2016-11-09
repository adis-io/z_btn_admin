json.extract! task, :id, :title, :user_id, :time
json.url task_url(task, format: :json)
