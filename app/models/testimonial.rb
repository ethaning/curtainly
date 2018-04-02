class Testimonial < ApplicationRecord
  validates :name, presence: true
  validates :testimonial, presence: true

  scope :published, -> { where published: true }
  scope :carousel, -> { where carousel: true }
end
