class AddGalleryToGalleryImage < ActiveRecord::Migration[5.1]
  def change
    add_reference :gallery_images, :gallery, foreign_key: true
  end
end
