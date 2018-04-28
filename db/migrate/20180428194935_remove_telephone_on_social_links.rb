class RemoveTelephoneOnSocialLinks < ActiveRecord::Migration[5.1]
  def change
    remove_column :social_links, :telephone
  end
end
