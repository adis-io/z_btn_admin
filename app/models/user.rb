class User < ApplicationRecord
  has_many :tasks
  validates :sid, uniqueness: true
end
