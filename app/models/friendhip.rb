class Friendhip < ApplicationRecord
  validates :friend_id, uniqueness: true, presence: true

  belongs_to :user
  belongs_to :recieved_user, foreign_key: :friend_id, class_name: 'User'
end
