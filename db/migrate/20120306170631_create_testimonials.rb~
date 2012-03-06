class CreateTestimonials < ActiveRecord::Migration
  def up
    create_table :testimonials do |t|
      t.string :name
      t.text :quote
      t.text :about
      t.integer :university_id
      t.integer :faculty_id
      t.text :how
      t.string :image_file
      t.string :icon
      t.boolean :index_page
      t.string :default_for

      t.timestamps
    end
		Testimonial.create_translation_table! :quote => :text, :about => :text,  :how => :text
  end

	def down
		drop_table :testimonials
		Testimonial.drop_translation_table!
	end

end
