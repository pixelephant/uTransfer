class CreateTextBlocks < ActiveRecord::Migration
  def up
    create_table :text_blocks do |t|
      t.string :title, :null => false
      t.text :text, :null => false
      t.string :visual
      t.string :link
      t.integer :position, :null => false

      t.timestamps
    end
		TextBlock.create_translation_table! :text => :text, :title => :string
  end

	def down
		drop_table :text_blocks
		TextBlock.drop_translation_table!
	end

end
