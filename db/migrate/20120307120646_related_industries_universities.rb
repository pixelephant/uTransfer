class RelatedIndustriesUniversities < ActiveRecord::Migration
  def up
		create_table :related_industries_universities do |t|
      t.integer :university_id
      t.integer :related_industry_id

      t.timestamps
    end
  end

  def down
  end
end
