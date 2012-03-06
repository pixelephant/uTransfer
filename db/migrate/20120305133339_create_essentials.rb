class CreateEssentials < ActiveRecord::Migration
  def up
    create_table :essentials do |t|
      t.string :topic
      t.integer :position

      t.timestamps
    end
		Essential.create_translation_table! :topic => :string
  end

  def down
    drop_table :essentials
		Essential.drop_translation_table!
  end
end
