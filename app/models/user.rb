class User < ApplicationRecord
  validates :title, presence: true
  has_many :tasks
end
