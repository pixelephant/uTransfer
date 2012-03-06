class CreateMedia < ActiveRecord::Migration
  def up
    create_table :media do |t|
      t.integer :text_block_id
      t.string :image_file
      t.string :title

      t.timestamps
    end
  end
end