class CreateFamousGraduates < ActiveRecord::Migration
  def up
    create_table :famous_graduates do |t|
      t.string :name
      t.string :title
      t.string :image_file
      t.integer :university_id

      t.timestamps
    end
		FamousGraduate.create_translation_table! :title => :string
  end

	def down
		drop_table :famous_graduates
		FamousGraduate.drop_translation_table!
	end

end