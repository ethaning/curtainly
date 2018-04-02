class GalleryImage < ApplicationRecord
  belongs_to :gallery

  validates :title, presence: true
  validates :image, presence: true

  mount_uploader :image, ImageUploader

  def url
    image.url
  end
end
