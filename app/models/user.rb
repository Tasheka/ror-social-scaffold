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
  has_many :inverse_friendships, foreign_key: :friend_id, class_name: 'Friendhip'

  has_many :pending_friendships, foreign_key: :friend_id, class_name: 'Friendhip'

  has_many :confirmed_friendships, through: 'friendhips'

  has_many :invitations, class_name: 'Friendhip'

  def friends
    friends_array = friendhips.map { |friendhip| friendsip.friend if friendhip.confirmed }
    friends_array.concat(inverse_friendships.map { |friendhip| friendhip.user if friendhip.confirmed })
    friends_array.compact
  end

  def friend?(user)
    friends.include?(user)
  end

  def invite_sent?(user)
    Friendhip.find_by(user_id: id, friend_id: user.id) ? true : false
  end

  def friend_requests
    inverse_friendships.map { |friendship| friendship.user unless friendship.confirmed }.compact
  end

  def pending_friends
    friendhips.map { |friendhip| friendhip.friend unless friendhip.confirmed }.compact
  end
end
