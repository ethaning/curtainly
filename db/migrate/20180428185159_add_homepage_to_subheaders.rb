class AddHomepageToSubheaders < ActiveRecord::Migration[5.1]
  def change
    add_column :subheaders, :homepage, :string
  end
end
