class Tip < ApplicationRecord
  validates :title, presence: true
  validates :article, presence: true
end
