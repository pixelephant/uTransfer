class CreateRelatedInstitutions < ActiveRecord::Migration
  def change
    create_table :related_institutions do |t|
      t.string :name, :null => false
      t.string :image_file, :null => false

      t.timestamps
    end
  end
end
