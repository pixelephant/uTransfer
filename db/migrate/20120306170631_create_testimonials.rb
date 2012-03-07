class CreateTestimonials < ActiveRecord::Migration
  def up
    create_table :testimonials do |t|
      t.string :name, :null => false
      t.text :quote, :null => false
      t.text :about, :null => false
      t.integer :university_id, :null => false
      t.integer :faculty_id, :null => false
      t.text :how, :null => false
      t.string :image_file, :null => false
      t.string :icon
      t.boolean :index_page, :null => false, :default => false
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
