class CreateSocialLinks < ActiveRecord::Migration[5.1]
  def change
    create_table :social_links do |t|
      t.string :instagram_url
      t.string :facebook_url
      t.string :telephone

      t.timestamps
    end
  end
end
