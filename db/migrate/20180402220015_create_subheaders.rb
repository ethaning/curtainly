class CreateSubheaders < ActiveRecord::Migration[5.1]
  def change
    create_table :subheaders do |t|
      t.string :testimonials
      t.string :about_us
      t.string :contact_us

      t.timestamps
    end
  end
end
