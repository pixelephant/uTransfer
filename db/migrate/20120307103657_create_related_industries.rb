class CreateRelatedIndustries < ActiveRecord::Migration
  def change
    create_table :related_industries do |t|
      t.string :name
      t.string :image_file

      t.timestamps
    end
  end
end
