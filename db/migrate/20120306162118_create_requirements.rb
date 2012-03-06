class CreateRequirements < ActiveRecord::Migration
  def up
    create_table :requirements do |t|
      t.text :text
      t.text :tution_fee
      t.integer :university_id
      t.string :level

      t.timestamps
    end
		Requirement.create_translation_table! :text => :text
  end

	def down
		drop_table :requirements
		Requirement.drop_translation_table!
	end

end