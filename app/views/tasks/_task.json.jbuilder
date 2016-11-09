json.extract! task, :id, :title, :user_id, :started_at, :finished_at
json.url task_url(task, format: :json)
