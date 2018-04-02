class AboutUs < ApplicationRecord
  validates :image, presence: true
  validates :text, presence: true

  mount_uploader :image, ImageUploader

  def text_array
    text.split("\r\n").select{|x| x if x != ""}
  end
end
