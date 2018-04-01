class CreateGalleryImages < ActiveRecord::Migration[5.1]
  def change
    create_table :gallery_images do |t|
      t.string :title
      t.string :image

      t.timestamps
    end
  end
end
