class User < ApplicationRecord
  validates :sid, uniqueness: true
end
