class Post < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy
  
  def like_user(user_id)
    likes.find_by(user_id: user_id)
   end
  
  mount_uploader :image, ImageUploader
  
  validates :title, presence: true,
                    length: { maximum: 30 }
  validates :aroma, presence: true,inclusion: { in: %w(フローラル ハーバル ウッディ シトラス 和の香り スパイシー エキゾチック その他) }
  validates :content, presence: true
end
