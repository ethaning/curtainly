class CreateTestimonials < ActiveRecord::Migration[5.1]
  def change
    create_table :testimonials do |t|
      t.string :name
      t.text :testimonial
      t.string :location
      t.boolean :published
      t.boolean :carousel

      t.timestamps
    end
  end
end
