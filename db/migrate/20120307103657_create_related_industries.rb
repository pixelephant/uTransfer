class CreateRelatedIndustries < ActiveRecord::Migration
  def change
    create_table :related_industries do |t|
      t.string :name, :null => false
      t.string :image_file, :null => false

      t.timestamps
    end
  end
end
