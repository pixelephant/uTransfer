class RelatedInstitutionsUniversities < ActiveRecord::Migration
  def up
		 create_table :related_institutions_universities do |t|
      t.integer :university_id
      t.integer :related_institution_id

      t.timestamps
    end
  end

  def down
	 drop_table :related_institutions_universities
  end
end
