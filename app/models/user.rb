class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true, length: { maximum: 20 }

  has_many :posts
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  has_many :friendhips
  has_many :recieved_friendships, foreign_key: :friend_id, class_name: 'Friendhip'

  has_many :pending_friendships, foreign_key: :friend_id, class_name: 'Friendhip'

  has_many :confirmed_friendships, through: 'friendhips'

  has_many :invitations, class_name: 'Friendhip'
end
