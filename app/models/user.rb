class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :likes
  has_many :comments, dependent: :destroy
  mount_uploader :image, ImageUploader

  validates :name, presence: true
  validates :email, presence: true
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
