class CreateUniversityImages < ActiveRecord::Migration
  def change
    create_table :university_images do |t|
      t.integer :university_id
      t.string :image_file

      t.timestamps
    end
  end
end
