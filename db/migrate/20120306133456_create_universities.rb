class CreateUniversities < ActiveRecord::Migration
  def up
    create_table :universities do |t|
      t.string :name, :null => false
      t.text :description, :null => false
      t.date :deadline, :null => false
      t.text :campus
      t.string :campus_image
      t.string :default_for

      t.timestamps
    end
		University.create_translation_table! :description => :text, :campus => :text
  end

	def down
		drop_table :universities
		University.drop_translation_table!
	end

end
