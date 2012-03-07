class CreateRelatedInstitutions < ActiveRecord::Migration
  def change
    create_table :related_institutions do |t|
      t.string :name
      t.string :image_file

      t.timestamps
    end
  end
end
