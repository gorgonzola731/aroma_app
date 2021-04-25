class Post < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy
  
  def like_user(user_id)
    likes.find_by(user_id: user_id)
   end
  
  mount_uploader :image, ImageUploader
  
  validates :title, presence: true
  validates :aroma, presence: true
  validates :content, presence: true
  validates :user_id, presence: true
end
