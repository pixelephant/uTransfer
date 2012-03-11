class CreateMedia < ActiveRecord::Migration
  def up
    create_table :media do |t|
      t.integer :text_block_id, :null => false
      t.string :image_file, :null => false
      t.string :title, :null => false

      t.timestamps
    end
  end
end
