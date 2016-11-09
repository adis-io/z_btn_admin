class Session < ApplicationRecord
  belongs_to :task

  scope :active, -> { where finished_at: nil }
  scope :finished, -> { where.not started_at: nil, finished_at: nil }

  def duration
    (finished_at - started_at).to_i
  end

  def self.finish_all
    active.update_all finished_at: Time.now
  end
end
