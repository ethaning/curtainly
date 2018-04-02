class AddCoverToGallery < ActiveRecord::Migration[5.1]
  def change
    add_column :galleries, :cover, :string
  end
end
