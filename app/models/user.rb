class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true, length: { maximum: 20 }

  has_many :posts
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  has_many :friendships
  has_many :recieved_friendships, foreign_key: :friend_id, class_name: 'Friendship'

  has_many :pending_friendships, foreign_key: :user_id, class_name: 'Friendship'

  has_many :confirmed_friendships, through: 'friendships'

  has_many :invitations, class_name: 'Friendship'
end
