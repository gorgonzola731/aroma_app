class Tip < ApplicationRecord
  validates :title, presence: true
  validates :article, presence: true
  validates :image, presence: :true
  mount_uploader :image, ImageUploader
end
