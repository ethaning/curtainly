class Gallery < ApplicationRecord
  has_many :gallery_images

  mount_uploader :cover, CoverUploader

  def images
    gallery_images
  end

  # def cover
  #   images.first
  # end
end
