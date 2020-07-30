class Picture < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :image, presence: true, if: -> { content.blank? }
  validates :content, presence: true, if: -> { image.blank? }
end
