class Friendhip < ApplicationRecord
  validates :friend_id, uniqueness: true, presence: true

  belongs_to :user
  belongs_to :friend, class_name: 'User'
end
