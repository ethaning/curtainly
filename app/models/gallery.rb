class Gallery < ApplicationRecord
  has_many :gallery_images

  def images
    gallery_images
  end

  def cover
    images.first
  end
end
