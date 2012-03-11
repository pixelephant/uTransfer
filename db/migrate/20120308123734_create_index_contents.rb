class CreateIndexContents < ActiveRecord::Migration
  def up
    create_table :index_contents do |t|
      t.text :intro, :null => false
      t.text :basic_info, :null => false
      t.string :famous_person_image, :null => false
      t.text :famous_person_quote, :null => false

      t.timestamps
    end
		IndexContent.create_translation_table! :intro => :text, :basic_info => :text,  :famous_person_quote => :text
  end

	def down
		drop_table :index_contents
		IndexContent.drop_translation_table!
	end

end
