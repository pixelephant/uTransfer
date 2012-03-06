class CreateEssentialTexts < ActiveRecord::Migration
  def up
    create_table :essential_texts do |t|
      t.integer :essential_id
      t.string :title
      t.text :text

      t.timestamps
    end
		EssentialTexts.create_translation_table! :title => :string, :text => :text
  end

	def down
		drop_table :essential_texts
		EssentialTexts.drop_translation_table!
	end
end