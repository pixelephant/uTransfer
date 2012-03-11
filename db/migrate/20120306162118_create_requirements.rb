class CreateRequirements < ActiveRecord::Migration
  def up
    create_table :requirements do |t|
      t.text :text, :null => false
      t.text :tution_fee, :null => false
      t.integer :university_id, :null => false
      t.string :level, :null => false

      t.timestamps
    end
		Requirement.create_translation_table! :text => :text
  end

	def down
		drop_table :requirements
		Requirement.drop_translation_table!
	end

end
