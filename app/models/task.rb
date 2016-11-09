class Task < ApplicationRecord
  belongs_to :user
  has_many :sessions
  validates :title, presence: true

  def start
    return false if current_task?
    user.sessions.finish_all
    session.touch :started_at
  end

  def finish
    return false if active_session.nil?
    session.touch :finished_at
  end

  def time
    finished_sessions.reduce(0) { |value, s| value + s.duration }
  end

  private

  def finished_sessions
    @finished_sessions ||= user.sessions.finished.where(task_id: id)
  end

  def current_task?
    active_session.try(:task_id) == id
  end

  def active_session
    @active_session ||= user.sessions.active.first
  end

  def created_session
    @created_session ||= user.sessions.create id: nil, task_id: id
  end

  def session
    @session ||= active_session || created_session
  end
end
