class CreateFaculties < ActiveRecord::Migration
  def up
    create_table :faculties do |t|
      t.string :name, :null => false
      t.text :desc, :null => false
      t.integer :university_id, :null => false

      t.timestamps
    end
		Faculty.create_translation_table! :desc => :text, :name => :string
  end

	def down
		drop_table :faculties
		Faculty.drop_translation_table!
	end

end
