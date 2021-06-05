class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :like_posts, through: :likes, source: :post
  has_many :comment_posts, through: :comments, source: :post

  mount_uploader :image, ImageUploader

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def liked_by?(post_id)
  likes.where(post_id: post_id).exists?
  end

  def self.guest
    find_or_create_by!(name:' guest_user',email: 'guest@example.com') do |user|
    user.password = SecureRandom.urlsafe_base64
    # user.confirmed_at = Time.now  # Confirmable を使用している場合は必要
    end
  end
end
