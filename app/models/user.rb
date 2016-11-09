class User < ApplicationRecord
  has_many :tasks

  def task_ids
    @task_ids ||= tasks.map(&:id)
  end

  def sessions
    sessions = Session.where(task_id: task_ids)
    sessions.joins('INNER JOIN tasks ON task_id = tasks.id').where('tasks.user_id = ?', id)
  end
end
