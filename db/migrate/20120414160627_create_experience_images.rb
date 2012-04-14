class CreateExperienceImages < ActiveRecord::Migration
  def change
    create_table :experience_images do |t|
    	t.integer :testimonial_id, :null => false
    	t.string :image_file, :null => false
      t.timestamps
    end
  end
end
