class Gallery < ApplicationRecord
  has_many :gallery_images

  validates :title, presence: true
  validates :cover, presence: true

  scope :published, -> { where published: true }

  mount_uploader :cover, CoverUploader

  def images
    gallery_images
  end
end
